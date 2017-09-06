/*****************************************************************************
 *
 * Filename:
 * ---------
 *   ccci_ch.h
 *
 * Project:
 * --------
 *   YuSu
 *
 * Description:
 * ------------
 *   MT6516 CCCI channel definitions
 *
 * Author:
 * -------
 *   CC Hwang (mtk00702)
 *
 ****************************************************************************/

#if defined(X_DEF_CH)
#define CCCI_CH_X(a, b) a = b,
#endif				/* X_DEF_CH */

#if defined(X_DEF_CTRL)
#define CCCI_CH_X(a, b) __ATTR(a, 0644, NULL, NULL),
#endif				/* X_DEF_CTRL */

#if defined(X_DEF_ATTR)
#define CCCI_CH_X(a, b) &(ccci_ctrl[a].attr),
#endif				/* X_DEF_ATTR */

CCCI_CH_X(CCCI_CONTROL_RX, 0)
    CCCI_CH_X(CCCI_CONTROL_TX, 1)
    CCCI_CH_X(CCCI_SYSTEM_RX, 2)
    CCCI_CH_X(CCCI_SYSTEM_TX, 3)
    CCCI_CH_X(CCCI_PCM_RX, 4)
    CCCI_CH_X(CCCI_PCM_TX, 5)
    CCCI_CH_X(CCCI_UART1_RX, 6)
    CCCI_CH_X(CCCI_UART1_RX_ACK, 7)
    CCCI_CH_X(CCCI_UART1_TX, 8)
    CCCI_CH_X(CCCI_UART1_TX_ACK, 9)
    CCCI_CH_X(CCCI_UART2_RX, 10)
    CCCI_CH_X(CCCI_UART2_RX_ACK, 11)
    CCCI_CH_X(CCCI_UART2_TX, 12)
    CCCI_CH_X(CCCI_UART2_TX_ACK, 13)
    CCCI_CH_X(CCCI_FS_RX, 14)
    CCCI_CH_X(CCCI_FS_TX, 15)
    CCCI_CH_X(CCCI_PMIC_RX, 16)
    CCCI_CH_X(CCCI_PMIC_TX, 17)
    CCCI_CH_X(CCCI_UEM_RX, 18)
    CCCI_CH_X(CCCI_UEM_TX, 19)
    CCCI_CH_X(CCCI_CCMNI1_RX, 20)
    CCCI_CH_X(CCCI_CCMNI1_RX_ACK, 21)
    CCCI_CH_X(CCCI_CCMNI1_TX, 22)
    CCCI_CH_X(CCCI_CCMNI1_TX_ACK, 23)
    CCCI_CH_X(CCCI_CCMNI2_RX, 24)
    CCCI_CH_X(CCCI_CCMNI2_RX_ACK, 25)
    CCCI_CH_X(CCCI_CCMNI2_TX, 26)
    CCCI_CH_X(CCCI_CCMNI2_TX_ACK, 27)
    CCCI_CH_X(CCCI_CCMNI3_RX, 28)
    CCCI_CH_X(CCCI_CCMNI3_RX_ACK, 29)
    CCCI_CH_X(CCCI_CCMNI3_TX, 30)
    CCCI_CH_X(CCCI_CCMNI3_TX_ACK, 31)
    CCCI_CH_X(CCCI_RPC_RX, 32)
    CCCI_CH_X(CCCI_RPC_TX, 33)
    CCCI_CH_X(CCCI_IPC_RX, 34)
    CCCI_CH_X(CCCI_IPC_RX_ACK, 35)
    CCCI_CH_X(CCCI_IPC_TX, 36)
    CCCI_CH_X(CCCI_IPC_TX_ACK, 37)
    CCCI_CH_X(CCCI_IPC_UART_RX, 38)
    CCCI_CH_X(CCCI_IPC_UART_RX_ACK, 39)
    CCCI_CH_X(CCCI_IPC_UART_TX, 40)
    CCCI_CH_X(CCCI_IPC_UART_TX_ACK, 41)
    CCCI_CH_X(CCCI_MD_LOG_RX, 42)
    CCCI_CH_X(CCCI_MD_LOG_TX, 43)
#undef CCCI_CH_X
