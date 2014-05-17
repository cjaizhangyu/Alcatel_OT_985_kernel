
#ifndef	_C2_STATUS_H_
#define _C2_STATUS_H_

enum c2_status {
	C2_OK = 0,		/* This must be zero */
	CCERR_INSUFFICIENT_RESOURCES = 1,
	CCERR_INVALID_MODIFIER = 2,
	CCERR_INVALID_MODE = 3,
	CCERR_IN_USE = 4,
	CCERR_INVALID_RNIC = 5,
	CCERR_INTERRUPTED_OPERATION = 6,
	CCERR_INVALID_EH = 7,
	CCERR_INVALID_CQ = 8,
	CCERR_CQ_EMPTY = 9,
	CCERR_NOT_IMPLEMENTED = 10,
	CCERR_CQ_DEPTH_TOO_SMALL = 11,
	CCERR_PD_IN_USE = 12,
	CCERR_INVALID_PD = 13,
	CCERR_INVALID_SRQ = 14,
	CCERR_INVALID_ADDRESS = 15,
	CCERR_INVALID_NETMASK = 16,
	CCERR_INVALID_QP = 17,
	CCERR_INVALID_QP_STATE = 18,
	CCERR_TOO_MANY_WRS_POSTED = 19,
	CCERR_INVALID_WR_TYPE = 20,
	CCERR_INVALID_SGL_LENGTH = 21,
	CCERR_INVALID_SQ_DEPTH = 22,
	CCERR_INVALID_RQ_DEPTH = 23,
	CCERR_INVALID_ORD = 24,
	CCERR_INVALID_IRD = 25,
	CCERR_QP_ATTR_CANNOT_CHANGE = 26,
	CCERR_INVALID_STAG = 27,
	CCERR_QP_IN_USE = 28,
	CCERR_OUTSTANDING_WRS = 29,
	CCERR_STAG_IN_USE = 30,
	CCERR_INVALID_STAG_INDEX = 31,
	CCERR_INVALID_SGL_FORMAT = 32,
	CCERR_ADAPTER_TIMEOUT = 33,
	CCERR_INVALID_CQ_DEPTH = 34,
	CCERR_INVALID_PRIVATE_DATA_LENGTH = 35,
	CCERR_INVALID_EP = 36,
	CCERR_MR_IN_USE = CCERR_STAG_IN_USE,
	CCERR_FLUSHED = 38,
	CCERR_INVALID_WQE = 39,
	CCERR_LOCAL_QP_CATASTROPHIC_ERROR = 40,
	CCERR_REMOTE_TERMINATION_ERROR = 41,
	CCERR_BASE_AND_BOUNDS_VIOLATION = 42,
	CCERR_ACCESS_VIOLATION = 43,
	CCERR_INVALID_PD_ID = 44,
	CCERR_WRAP_ERROR = 45,
	CCERR_INV_STAG_ACCESS_ERROR = 46,
	CCERR_ZERO_RDMA_READ_RESOURCES = 47,
	CCERR_QP_NOT_PRIVILEGED = 48,
	CCERR_STAG_STATE_NOT_INVALID = 49,
	CCERR_INVALID_PAGE_SIZE = 50,
	CCERR_INVALID_BUFFER_SIZE = 51,
	CCERR_INVALID_PBE = 52,
	CCERR_INVALID_FBO = 53,
	CCERR_INVALID_LENGTH = 54,
	CCERR_INVALID_ACCESS_RIGHTS = 55,
	CCERR_PBL_TOO_BIG = 56,
	CCERR_INVALID_VA = 57,
	CCERR_INVALID_REGION = 58,
	CCERR_INVALID_WINDOW = 59,
	CCERR_TOTAL_LENGTH_TOO_BIG = 60,
	CCERR_INVALID_QP_ID = 61,
	CCERR_ADDR_IN_USE = 62,
	CCERR_ADDR_NOT_AVAIL = 63,
	CCERR_NET_DOWN = 64,
	CCERR_NET_UNREACHABLE = 65,
	CCERR_CONN_ABORTED = 66,
	CCERR_CONN_RESET = 67,
	CCERR_NO_BUFS = 68,
	CCERR_CONN_TIMEDOUT = 69,
	CCERR_CONN_REFUSED = 70,
	CCERR_HOST_UNREACHABLE = 71,
	CCERR_INVALID_SEND_SGL_DEPTH = 72,
	CCERR_INVALID_RECV_SGL_DEPTH = 73,
	CCERR_INVALID_RDMA_WRITE_SGL_DEPTH = 74,
	CCERR_INSUFFICIENT_PRIVILEGES = 75,
	CCERR_STACK_ERROR = 76,
	CCERR_INVALID_VERSION = 77,
	CCERR_INVALID_MTU = 78,
	CCERR_INVALID_IMAGE = 79,
	CCERR_PENDING = 98,	/* not an error; user internally by adapter */
	CCERR_DEFER = 99,	/* not an error; used internally by adapter */
	CCERR_FAILED_WRITE = 100,
	CCERR_FAILED_ERASE = 101,
	CCERR_FAILED_VERIFICATION = 102,
	CCERR_NOT_FOUND = 103,

};

enum c2_connect_status {
	C2_CONN_STATUS_SUCCESS = C2_OK,
	C2_CONN_STATUS_NO_MEM = CCERR_INSUFFICIENT_RESOURCES,
	C2_CONN_STATUS_TIMEDOUT = CCERR_CONN_TIMEDOUT,
	C2_CONN_STATUS_REFUSED = CCERR_CONN_REFUSED,
	C2_CONN_STATUS_NETUNREACH = CCERR_NET_UNREACHABLE,
	C2_CONN_STATUS_HOSTUNREACH = CCERR_HOST_UNREACHABLE,
	C2_CONN_STATUS_INVALID_RNIC = CCERR_INVALID_RNIC,
	C2_CONN_STATUS_INVALID_QP = CCERR_INVALID_QP,
	C2_CONN_STATUS_INVALID_QP_STATE = CCERR_INVALID_QP_STATE,
	C2_CONN_STATUS_REJECTED = CCERR_CONN_RESET,
	C2_CONN_STATUS_ADDR_NOT_AVAIL = CCERR_ADDR_NOT_AVAIL,
};

enum c2_flash_status {
	C2_FLASH_STATUS_SUCCESS = 0x0000,
	C2_FLASH_STATUS_VERIFY_ERR = 0x0002,
	C2_FLASH_STATUS_IMAGE_ERR = 0x0004,
	C2_FLASH_STATUS_ECLBS = 0x0400,
	C2_FLASH_STATUS_PSLBS = 0x0800,
	C2_FLASH_STATUS_VPENS = 0x1000,
};

#endif				/* _C2_STATUS_H_ */