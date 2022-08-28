const { errorResponse, successResponse } = require('../../helper/responseMessage');
const { fetchNewTransaction, fetchCreateComment, fetchGetAllTransaction, fetchGetTransaction, fetchGetNotification, fetchGetAllRoom } = require('./conmentService');

async function NewTransaction(req, res) {
    const result = await fetchNewTransaction(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
async function GetAllTransaction(req, res) {
    const result = await fetchGetAllTransaction(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
async function GetTransaction(req, res) {
    const result = await fetchGetTransaction(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
async function GetNotification(req, res) {
    const result = await fetchGetNotification(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
async function GetAllRoom(req, res) {
    const result = await fetchGetAllRoom(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
async function NewComment(req, res) {
    const result = await fetchCreateComment(req, res)
    if (result.err) res.end(errorResponse(result))
    else res.status(200).end(successResponse(result))
}
module.exports = {
    NewTransaction,
    NewComment,
    GetAllTransaction,
    GetTransaction,
    GetNotification,
    GetAllRoom
    
}