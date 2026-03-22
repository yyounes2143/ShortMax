.class public Lcom/ss/ttvideoengine/DataLoaderHelper;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;
.implements Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;
.implements Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$Holder;
    }
.end annotation


# static fields
.field public static final DATALOADER_KEY_CHECK_CONTENT_TYPE_METHOD:I = 0x490

.field public static final DATALOADER_KEY_DEVICE_SCORE:I = 0x7b

.field public static final DATALOADER_KEY_DISABLE_THREAD_POOL:I = 0x491

.field public static final DATALOADER_KEY_ENABLE_ALOG:I = 0x200

.field public static final DATALOADER_KEY_ENABLE_CENTER_PRELOAD_PROGRESS:I = 0x2339

.field public static final DATALOADER_KEY_ENABLE_CUSTOMDIR_SEARCH_ALL_PATH:I = 0x7f5

.field public static final DATALOADER_KEY_ENABLE_ENGINE_PORTRAIT:I = 0x7f4

.field public static final DATALOADER_KEY_ENABLE_FILECACHE_V2:I = 0x3ef

.field public static final DATALOADER_KEY_ENABLE_FILE_RING_BUFFER:I = 0x3f1

.field public static final DATALOADER_KEY_ENABLE_HLS_PROXY:I = 0x2338

.field public static final DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS:I = 0x48e

.field public static final DATALOADER_KEY_ENABLE_LOAD_MDLV2_FULLLIB:I = 0x2346

.field public static final DATALOADER_KEY_ENABLE_LOAD_P2P_ASYNC:I = 0x2337

.field public static final DATALOADER_KEY_ENABLE_MUTLI_DOWNLOAD_PATH:I = 0x2336

.field public static final DATALOADER_KEY_ENABLE_NOTIFY_ERROR:I = 0x233a

.field public static final DATALOADER_KEY_ENABLE_NOTIFY_NOT_ONLY_NETWORK_ERROR:I = 0x233b

.field public static final DATALOADER_KEY_ENABLE_PRELOAD_ALL_TS:I = 0x233f

.field public static final DATALOADER_KEY_ENABLE_PRELOAD_FIRST_TS:I = 0x233d

.field public static final DATALOADER_KEY_ENABLE_PRELOAD_REUSE:I = 0x3c

.field public static final DATALOADER_KEY_ENABLE_REPORT_HEADERS:I = 0x2ee4

.field public static final DATALOADER_KEY_ENABLE_UPDATE_NET_STATUS:I = 0x492

.field public static final DATALOADER_KEY_ENABLE_USE_ORIGINAL_URL:I = 0x48c

.field public static final DATALOADER_KEY_FILE_EXTEND_BUFFER:I = 0x3f2

.field public static final DATALOADER_KEY_GET_ACCESS_TYPE:I = 0x3f0

.field public static final DATALOADER_KEY_GET_MDL_PROTOCOL_HANDLE:I = 0x3eb

.field public static final DATALOADER_KEY_GLOBAL_OPTION_END:I = 0xea5f

.field public static final DATALOADER_KEY_GLOBAL_OPTION_START:I = 0xc350

.field public static final DATALOADER_KEY_HEART_BEAT_INTERVAL:I = 0x3d

.field public static final DATALOADER_KEY_INT64_P2P_STRAGETY_VALUE:I = 0x476

.field public static final DATALOADER_KEY_INT_ACCESS_CHECK_LEVEL:I = 0x44e

.field public static final DATALOADER_KEY_INT_ALLOW_TRY_THE_LAST_URL:I = 0x46d

.field public static final DATALOADER_KEY_INT_AUDIO_PRELOAD_FIRST:I = 0x459

.field public static final DATALOADER_KEY_INT_BACKUP_DNS_TYPE:I = 0x5b

.field public static final DATALOADER_KEY_INT_BLOCK_HOST_ERR_IP_COUNT:I = 0x47c

.field public static final DATALOADER_KEY_INT_CHECKSUM_LEVEL:I = 0xd

.field public static final DATALOADER_KEY_INT_CHECK_CACHE_DIR:I = 0x7e9

.field public static final DATALOADER_KEY_INT_CHECK_PRELOAD_LEVEL:I = 0x457

.field public static final DATALOADER_KEY_INT_CONNECT_POOL_STRAGETY_VALUE:I = 0x478

.field public static final DATALOADER_KEY_INT_COOKIE_TOKEN_CHECK_LEVEL:I = 0x5ea

.field public static final DATALOADER_KEY_INT_CURRENT_ACCESS_TYPE:I = 0x450

.field public static final DATALOADER_KEY_INT_CUR_DISK_SIZE_MB:I = 0x837

.field public static final DATALOADER_KEY_INT_CUR_MEMORY_SIZE_MB:I = 0x839

.field public static final DATALOADER_KEY_INT_DASH_AUDIO_PRELOAD_RATIO:I = 0x5e0

.field public static final DATALOADER_KEY_INT_DASH_MIN_AUDIO_PRELOAD_SIZE:I = 0x5df

.field public static final DATALOADER_KEY_INT_DEFAULT_DNS_EXPIRED_TIME:I = 0x475

.field public static final DATALOADER_KEY_INT_DEV_DISK_SIZE_MB:I = 0x836

.field public static final DATALOADER_KEY_INT_DEV_MEMORY_SIZE_MB:I = 0x838

.field public static final DATALOADER_KEY_INT_DISABLE_FILEPATH_CHECK:I = 0x233e

.field public static final DATALOADER_KEY_INT_DISABLE_RECENT_CACHE:I = 0x7eb

.field public static final DATALOADER_KEY_INT_DNS_MAIN_DELAYED_USE_BACKUP_TIME:I = 0x5c

.field public static final DATALOADER_KEY_INT_ENABLE_BACKUP_IP:I = 0x73

.field public static final DATALOADER_KEY_INT_ENABLE_BENCHMARK_IO:I = 0x5d

.field public static final DATALOADER_KEY_INT_ENABLE_BUFFER_PRELOAD:I = 0x48b

.field public static final DATALOADER_KEY_INT_ENABLE_BYTEMEDIANETLOADER:I = 0x6a5

.field public static final DATALOADER_KEY_INT_ENABLE_CACHE_REQRANGE:I = 0x46e

.field public static final DATALOADER_KEY_INT_ENABLE_DNS_BACKUP_IP:I = 0x68

.field public static final DATALOADER_KEY_INT_ENABLE_DNS_LOG:I = 0x6a

.field public static final DATALOADER_KEY_INT_ENABLE_DNS_PARALLEL_PARSE:I = 0x67

.field public static final DATALOADER_KEY_INT_ENABLE_DNS_REFRESH:I = 0x69

.field public static final DATALOADER_KEY_INT_ENABLE_DOWNLOADER_LOG:I = 0x15

.field public static final DATALOADER_KEY_INT_ENABLE_DUMPLIBMD5:I = 0x2328

.field public static final DATALOADER_KEY_INT_ENABLE_DYNAMIC_SOCKET_TIMEOUT:I = 0x471

.field public static final DATALOADER_KEY_INT_ENABLE_EARLY_DATA:I = 0x488

.field public static final DATALOADER_KEY_INT_ENABLE_EVENTINFO:I = 0xc8

.field public static final DATALOADER_KEY_INT_ENABLE_EXTERN_DNS:I = 0x7

.field public static final DATALOADER_KEY_INT_ENABLE_FILE_MUTEX_OPTIMIZE:I = 0x7e1

.field public static final DATALOADER_KEY_INT_ENABLE_FIRST_VIDEO_NATIVEMDL:I = 0x3f4

.field public static final DATALOADER_KEY_INT_ENABLE_HLS:I = 0x2330

.field public static final DATALOADER_KEY_INT_ENABLE_IOMANAGER:I = 0x47e

.field public static final DATALOADER_KEY_INT_ENABLE_IP_BUCKET:I = 0x40

.field public static final DATALOADER_KEY_INT_ENABLE_LAZY_BUFFERPOOL:I = 0x45e

.field public static final DATALOADER_KEY_INT_ENABLE_LIBMANAGER:I = 0x2335

.field public static final DATALOADER_KEY_INT_ENABLE_LOADER_PREEMPT:I = 0x44d

.field public static final DATALOADER_KEY_INT_ENABLE_LOADER_SEEK:I = 0x46f

.field public static final DATALOADER_KEY_INT_ENABLE_MDLV2:I = 0x482

.field public static final DATALOADER_KEY_INT_ENABLE_MISS_REASON:I = 0x7ef

.field public static final DATALOADER_KEY_INT_ENABLE_MULTI_NETWORK:I = 0x5dd

.field public static final DATALOADER_KEY_INT_ENABLE_NETSCHEDULER:I = 0x468

.field public static final DATALOADER_KEY_INT_ENABLE_NETWORK_CHANGED_LISTEN:I = 0x3f3

.field public static final DATALOADER_KEY_INT_ENABLE_NEW_BUFFERPOOL:I = 0x460

.field public static final DATALOADER_KEY_INT_ENABLE_OKHTTPLOADER:I = 0x1f

.field public static final DATALOADER_KEY_INT_ENABLE_OWN_VDP_PRELOAD_NOTIFY:I = 0x47f

.field public static final DATALOADER_KEY_INT_ENABLE_P2P_STRAGETY_CONTROL:I = 0x5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATALOADER_KEY_INT_ENABLE_P2P_UPLOAD:I = 0x834

.field public static final DATALOADER_KEY_INT_ENABLE_PLAYINFO_CACHE:I = 0x464

.field public static final DATALOADER_KEY_INT_ENABLE_PLAY_LOG:I = 0x467

.field public static final DATALOADER_KEY_INT_ENABLE_PRECONNECT:I = 0x3e9

.field public static final DATALOADER_KEY_INT_ENABLE_PREPARSE_HOST:I = 0x72

.field public static final DATALOADER_KEY_INT_ENABLE_REPORT_SPEED:I = 0x44c

.field public static final DATALOADER_KEY_INT_ENABLE_SESSION_REUSE:I = 0x65

.field public static final DATALOADER_KEY_INT_ENABLE_SOCKET_IDLE_TIMEOUT:I = 0x9

.field public static final DATALOADER_KEY_INT_ENABLE_SOCKET_REUSE:I = 0x8

.field public static final DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE:I = 0x493

.field public static final DATALOADER_KEY_INT_ENABLE_SPEED_PREDICT:I = 0x48a

.field public static final DATALOADER_KEY_INT_ENABLE_SPEED_REPORT:I = 0x494

.field public static final DATALOADER_KEY_INT_ENABLE_SPLIT_PRELOAD_WITH_DATALOADER:I = 0x483

.field public static final DATALOADER_KEY_INT_ENABLE_STORAGE_MODULE:I = 0x7d0

.field public static final DATALOADER_KEY_INT_ENABLE_STRATEGY_CENTER_CANCEL_ALL:I = 0x5e1

.field public static final DATALOADER_KEY_INT_ENABLE_SYNDNS_P2P:I = 0x454

.field public static final DATALOADER_KEY_INT_ENABLE_THREADPOOL_CHECK_IDLE:I = 0x7da

.field public static final DATALOADER_KEY_INT_ENABLE_TRACEID_PRELOAD_LOG:I = 0x7f1

.field public static final DATALOADER_KEY_INT_ENABLE_TTNETLOADER:I = 0x16

.field public static final DATALOADER_KEY_INT_ENABLE_TTQUICHELOADER:I = 0x18

.field public static final DATALOADER_KEY_INT_ENABLE_TTQUICHELOADER_CHECK_WITH_NETWORK_TYPE:I = 0x19

.field public static final DATALOADER_KEY_INT_ENABLE_USE_GROUP_ID:I = 0x7ea

.field public static final DATALOADER_KEY_INT_ENABLE_VIDEOMDOEL_HIT_CACHE_CALLBACK:I = 0x2ee2

.field public static final DATALOADER_KEY_INT_ENABLE_WAIT_NET_REACHABLE:I = 0x7e0

.field public static final DATALOADER_KEY_INT_ENCRYPT_VERSION:I = 0x1e

.field public static final DATALOADER_KEY_INT_ERROR_STATE_TRUST_TIME:I = 0x41

.field public static final DATALOADER_KEY_INT_FILEMANAGER_INTERVAL:I = 0x7f3

.field public static final DATALOADER_KEY_INT_FILE_EXTEND_SIZE:I = 0x47a

.field public static final DATALOADER_KEY_INT_FIRSTRANGE_LEFT_THRESHOLD:I = 0x46c

.field public static final DATALOADER_KEY_INT_FORBID_BYPASS_COOKIE:I = 0x45d

.field public static final DATALOADER_KEY_INT_FORBID_NATIVE_MDL_FOR_ORIGINAL_URL:I = 0x20

.field public static final DATALOADER_KEY_INT_FORCE_DNS_EXPIRED_TIME:I = 0x474

.field public static final DATALOADER_KEY_INT_GLOBAL_SPEED_SAMPLE_INTERVAL:I = 0x71

.field public static final DATALOADER_KEY_INT_HEADER_DATA_MEM_CACHE:I = 0x45a

.field public static final DATALOADER_KEY_INT_HLS_TS_FILE_KEY_GENERATE_TYPE:I = 0x2ee1

.field public static final DATALOADER_KEY_INT_IGNOREPLAYINFO:I = 0x2329

.field public static final DATALOADER_KEY_INT_IGNORE_PLAYER_STALL:I = 0x12

.field public static final DATALOADER_KEY_INT_IGNORE_TEXT_PLAIN_SPEED_TEST:I = 0x7e6

.field public static final DATALOADER_KEY_INT_INITIAL_SOCKET_TIMEOUT:I = 0x472

.field public static final DATALOADER_KEY_INT_IPV4_NUM:I = 0x45c

.field public static final DATALOADER_KEY_INT_IPV6_NUM:I = 0x45b

.field public static final DATALOADER_KEY_INT_IS_CLOSE_FILE_CACHE:I = 0x32

.field public static final DATALOADER_KEY_INT_IS_ENABLE_MAX_CACHE_AGE_FOR_ALL_DIR:I = 0x38

.field public static final DATALOADER_KEY_INT_LIMIT_IP_NUM:I = 0x7dc

.field public static final DATALOADER_KEY_INT_LOADER_TYPE:I = 0x5

.field public static final DATALOADER_KEY_INT_MAIN_DNS_TYPE:I = 0x5a

.field public static final DATALOADER_KEY_INT_MAXCACHESIZE:I = 0x1

.field public static final DATALOADER_KEY_INT_MAX_ALIVE_HOST_NUM:I = 0x479

.field public static final DATALOADER_KEY_INT_MAX_CACHE_AGE:I = 0x37

.field public static final DATALOADER_KEY_INT_MAX_FILE_MEM_CACHE_NUM:I = 0x487

.field public static final DATALOADER_KEY_INT_MAX_FILE_MEM_CACHE_SIZE:I = 0x486

.field public static final DATALOADER_KEY_INT_MAX_IP_COUNT:I = 0x3f

.field public static final DATALOADER_KEY_INT_MAX_SOCKET_REUSE_NUM:I = 0x473

.field public static final DATALOADER_KEY_INT_MAX_TLS_VEERSION:I = 0x64

.field public static final DATALOADER_KEY_INT_MDL_CLOSE_LOCAL_SERVER:I = 0x3f5

.field public static final DATALOADER_KEY_INT_MIN_ALLOW_SPEED:I = 0x47b

.field public static final DATALOADER_KEY_INT_MULTI_SPEED_SAMPL_INTERVAL:I = 0x70

.field public static final DATALOADER_KEY_INT_NEED_DL_LOAD_P2P_LIB:I = 0xf

.field public static final DATALOADER_KEY_INT_NEED_MDL_LOAD_MDLV2_LIB:I = 0x21

.field public static final DATALOADER_KEY_INT_NEED_SPEED_TEST_BY_TIMEINTERNAL:I = 0x458

.field public static final DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_ALL_NETERR:I = 0x469

.field public static final DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_DURATION_MS:I = 0x46b

.field public static final DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_ERR_COUNT:I = 0x46a

.field public static final DATALOADER_KEY_INT_NETWORK_CHANGED:I = 0x3e8

.field public static final DATALOADER_KEY_INT_NET_LOG_MAX_SIZE:I = 0x7e8

.field public static final DATALOADER_KEY_INT_NET_UNREACHABLE_STOP_RETRY:I = 0x7df

.field public static final DATALOADER_KEY_INT_NET_UNREACHABLE_TIMEOUT:I = 0x7e3

.field public static final DATALOADER_KEY_INT_NEW_BUFFERPOOL_BLOCK_SIZE:I = 0x461

.field public static final DATALOADER_KEY_INT_NEW_BUFFERPOOL_GROWCOUNT:I = 0x463

.field public static final DATALOADER_KEY_INT_NEW_BUFFERPOOL_RESIDENT_SIZE:I = 0x462

.field public static final DATALOADER_KEY_INT_NON_BLOCK_RANGE_MAX_KB:I = 0x7de

.field public static final DATALOADER_KEY_INT_NON_BLOCK_RANGE_MODE:I = 0x7dd

.field public static final DATALOADER_KEY_INT_ONLY_USE_CDN:I = 0x42

.field public static final DATALOADER_KEY_INT_OPENTIMEOUT:I = 0x3

.field public static final DATALOADER_KEY_INT_OPTIMIZE_RANGE:I = 0x7e7

.field public static final DATALOADER_KEY_INT_P2P_COST_TAG_1:I = 0x7e4

.field public static final DATALOADER_KEY_INT_P2P_COST_TAG_2:I = 0x7e5

.field public static final DATALOADER_KEY_INT_P2P_FIRSTRANGE_LOADER_TYPE:I = 0x477

.field public static final DATALOADER_KEY_INT_P2P_FIRSTRANGE_TYPE:I = 0x465

.field public static final DATALOADER_KEY_INT_P2P_LEVEL:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATALOADER_KEY_INT_P2P_PREDOWN:I = 0x466

.field public static final DATALOADER_KEY_INT_P2P_PREDOWN_PEER_COUNT:I = 0x470

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_EXPIRED_TIME:I = 0x63

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_MAX_BUFFERING_TIME:I = 0x62

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_MAX_LEAVE_WAIT_TIME:I = 0x61

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_MIN_NET_NETWORK_LEVEL:I = 0x6e

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_MIN_NET_SPEED:I = 0x6d

.field public static final DATALOADER_KEY_INT_P2P_STRAGETY_MIN_PLAYNUM:I = 0x60

.field public static final DATALOADER_KEY_INT_PARALLEL_NUM:I = 0xb

.field public static final DATALOADER_KEY_INT_PCDN_AUTO:I = 0x22

.field public static final DATALOADER_KEY_INT_PLAY_LOG:I = 0xa

.field public static final DATALOADER_KEY_INT_PRECONNECT_NUM:I = 0x3ea

.field public static final DATALOADER_KEY_INT_PRELOAD_CHECK_URL:I = 0x5e9

.field public static final DATALOADER_KEY_INT_PRELOAD_FLOAT_SIZE:I = 0x13

.field public static final DATALOADER_KEY_INT_PRELOAD_INFO_RECORD_MAX_COUNT:I = 0x7f0

.field public static final DATALOADER_KEY_INT_PRELOAD_LOWER_BOUND_BUFFER_MS:I = 0x484

.field public static final DATALOADER_KEY_INT_PRELOAD_PRE_CONNECT:I = 0x14

.field public static final DATALOADER_KEY_INT_PRELOAD_STRAGETY:I = 0xc

.field public static final DATALOADER_KEY_INT_PRELOAD_UPPER_BOUND_BUFFER_MS:I = 0x485

.field public static final DATALOADER_KEY_INT_PRELOAD_WAIT_LIST_TYPE:I = 0x50

.field public static final DATALOADER_KEY_INT_RWTIMEOUT:I = 0x2

.field public static final DATALOADER_KEY_INT_SESSION_CACHE_INTERVAL:I = 0x7f2

.field public static final DATALOADER_KEY_INT_SESSION_TIMEOUT:I = 0x45f

.field public static final DATALOADER_KEY_INT_SETTINGS_ENABLE:I = 0x77

.field public static final DATALOADER_KEY_INT_SET_BACKUP_LOADERTYPE:I = 0x455

.field public static final DATALOADER_KEY_INT_SKIP_CDN_BEFORE_EXPIRED_SEC:I = 0x7e2

.field public static final DATALOADER_KEY_INT_SOCKET_BUFF_KB:I = 0x451

.field public static final DATALOADER_KEY_INT_SOCKET_RECV_BUFF_BYTES:I = 0x489

.field public static final DATALOADER_KEY_INT_SPEED_COEFFICIENTVALUE:I = 0x5e

.field public static final DATALOADER_KEY_INT_START_NEXT_DOWNLOAD_THRESHOLD:I = 0x44f

.field public static final DATALOADER_KEY_INT_STO_IO_WRITE_LIMIT_KB_TH1:I = 0x7d4

.field public static final DATALOADER_KEY_INT_STO_IO_WRITE_LIMIT_KB_TH2:I = 0x7d5

.field public static final DATALOADER_KEY_INT_STO_MAX_IDLE_TIME_SEC:I = 0x7d6

.field public static final DATALOADER_KEY_INT_STO_PLAY_DLD_WIN_SIZE_KB_LS:I = 0x7d2

.field public static final DATALOADER_KEY_INT_STO_PLAY_DLD_WIN_SIZE_KB_NM:I = 0x7d1

.field public static final DATALOADER_KEY_INT_STO_RING_BUFFER_SIZE_KB:I = 0x7d3

.field public static final DATALOADER_KEY_INT_TEST_SPEED_VERSION:I = 0xe

.field public static final DATALOADER_KEY_INT_THREADPOOL_IDLE_TTL_SECOND:I = 0x7db

.field public static final DATALOADER_KEY_INT_THREADPOOL_MIN_COUNT:I = 0x7d9

.field public static final DATALOADER_KEY_INT_THREAD_STACK_SIZE_LEVEL:I = 0x7d8

.field public static final DATALOADER_KEY_INT_TRACE_HOST:I = 0x7a

.field public static final DATALOADER_KEY_INT_TRYCOUNT:I = 0x4

.field public static final DATALOADER_KEY_INT_TTNETLOADER_CRONET_BUF_SIZE_KB:I = 0x17

.field public static final DATALOADER_KEY_INT_UPDATE_FILE_INTERNAL:I = 0x7ec

.field public static final DATALOADER_KEY_INT_USE_NEW_SPEED_TEST_SINGLE:I = 0x79

.field public static final DATALOADER_KEY_INT_VERSION_INFO:I = 0x6

.field public static final DATALOADER_KEY_INT_WRITEFILENOTIFY_INTERVALMS:I = 0x11

.field public static final DATALOADER_KEY_INT_XY_LIB_VALUE:I = 0x456

.field public static final DATALOADER_KEY_IS_SUPPORT_HLS:I = 0x2331

.field public static final DATALOADER_KEY_LIVE_CACHE_HTTP_TO_P2P:I = 0x1fa

.field public static final DATALOADER_KEY_LIVE_CAHCE_P2P_TO_HTTP:I = 0x1fb

.field public static final DATALOADER_KEY_LIVE_CONTAINER_STRING:I = 0x202

.field public static final DATALOADER_KEY_LIVE_ENEBALE_P2P:I = 0x1f4

.field public static final DATALOADER_KEY_LIVE_LOADER_ENABLE:I = 0x1f6

.field public static final DATALOADER_KEY_LIVE_LOADER_TYPE:I = 0x1f5

.field public static final DATALOADER_KEY_LIVE_MOBILE_DOWNLOAD_ALLOW:I = 0x1ff

.field public static final DATALOADER_KEY_LIVE_MOBILE_UPLOAD_ALLOW:I = 0x1fe

.field public static final DATALOADER_KEY_LIVE_RECV_DATA_TIMEOUT:I = 0x201

.field public static final DATALOADER_KEY_LIVE_TRY_SWITCH_P2P_TIMES:I = 0x1fc

.field public static final DATALOADER_KEY_LIVE_WAIT_P2P_THREDTHOLD:I = 0x1fd

.field public static final DATALOADER_KEY_LIVE_WATCH_DURATION_THRESHOLD:I = 0x1f9

.field public static final DATALOADER_KEY_LONG_DOWNLOAD_MONITOR_MIN_LOAD_SIZE:I = 0x481

.field public static final DATALOADER_KEY_LONG_DOWNLOAD_MONITOR_TIME_INTERNAL:I = 0x480

.field public static final DATALOADER_KEY_MAX_LOADER_LOG_NUM:I = 0x48f

.field public static final DATALOADER_KEY_MDL_OPTION_END:I = 0x15f8f

.field public static final DATALOADER_KEY_MDL_OPTION_START:I = 0x13880

.field public static final DATALOADER_KEY_NOTIFY_DNSLOG:I = 0x6

.field public static final DATALOADER_KEY_NOTIFY_DOWNLOADERLOG:I = 0x7

.field public static final DATALOADER_KEY_NOTIFY_FILE_DELETE_SIZE_BY_USEDTIME:I = 0x1f

.field public static final DATALOADER_KEY_NOTIFY_HEARTBEATLOG:I = 0x3

.field public static final DATALOADER_KEY_NOTIFY_HTTP_HEADERS:I = 0x21

.field public static final DATALOADER_KEY_NOTIFY_INVALID:I = -0x1

.field public static final DATALOADER_KEY_NOTIFY_IOSPEEDINFO:I = 0x14

.field public static final DATALOADER_KEY_NOTIFY_MDL_STARTED:I = 0xb

.field public static final DATALOADER_KEY_NOTIFY_NEWLOG:I = 0xa

.field public static final DATALOADER_KEY_NOTIFY_OWNLIVEMDLLOG:I = 0x4

.field public static final DATALOADER_KEY_NOTIFY_OWNLIVEMDLLOG_SAMPLE:I = 0x5

.field public static final DATALOADER_KEY_NOTIFY_OWNVDPLOG:I = 0x1

.field public static final DATALOADER_KEY_NOTIFY_PRELOADEND:I = 0x15

.field public static final DATALOADER_KEY_NOTIFY_PRELOAD_CANCLLED:I = 0x8

.field public static final DATALOADER_KEY_NOTIFY_SPEEDINFO:I = 0x2

.field public static final DATALOADER_KEY_NOTIFY_SPEEDINFO_BY_TIMEINTERNAL:I = 0x20

.field public static final DATALOADER_KEY_NOTIFY_TASKLOG:I = 0x0

.field public static final DATALOADER_KEY_NOTIFY_TASKOPEN:I = 0x1e

.field public static final DATALOADER_KEY_NOTIFY_TRIGGER_PRELOAD:I = 0x9

.field public static final DATALOADER_KEY_PLAY_INFO_BUFFERING_END:I = 0x1a

.field public static final DATALOADER_KEY_PLAY_INFO_BUFFERING_START:I = 0x19

.field public static final DATALOADER_KEY_PLAY_INFO_CURRENT_BUFFER:I = 0x1b

.field public static final DATALOADER_KEY_PLAY_INFO_LOAD_PERCENT:I = 0x18

.field public static final DATALOADER_KEY_PLAY_INFO_PLAYING_POS:I = 0x17

.field public static final DATALOADER_KEY_PLAY_INFO_RENDER_START:I = 0x16

.field public static final DATALOADER_KEY_PLAY_INFO_SEEK_ACTION:I = 0x1c

.field public static final DATALOADER_KEY_SET_ALOG_WRITE_PTR:I = 0x3e

.field public static final DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE:I = 0x3ed

.field public static final DATALOADER_KEY_SET_MDL_PROTOCOL_STATUS:I = 0x3ec

.field public static final DATALOADER_KEY_SET_RINGBUFFER_SIZE_KB:I = 0x3ee

.field public static final DATALOADER_KEY_STRING_CACHEDIR:I = 0x0

.field public static final DATALOADER_KEY_STRING_DM_DOMAIN:I = 0x232b

.field public static final DATALOADER_KEY_STRING_DOWNLOAD_DIR:I = 0x6f

.field public static final DATALOADER_KEY_STRING_DYNAMIC_PRECONNECT_CONFIG_STR:I = 0x48d

.field public static final DATALOADER_KEY_STRING_FILE_RINGBUFFER_OPT_STR:I = 0x5e6

.field public static final DATALOADER_KEY_STRING_FORESIGHT_DOMAIN:I = 0x232c

.field public static final DATALOADER_KEY_STRING_GET_CUSTON_UA:I = 0x5e5

.field public static final DATALOADER_KEY_STRING_GOOGLE_DNS_HOST:I = 0x6c

.field public static final DATALOADER_KEY_STRING_IS_CACHE_DIR_LIST_STR:I = 0x2333

.field public static final DATALOADER_KEY_STRING_IS_P2P_CONFIG_STR:I = 0x2334

.field public static final DATALOADER_KEY_STRING_IS_SOCKET_TRAIN_CENTER_CONFIG:I = 0x2332

.field public static final DATALOADER_KEY_STRING_KEYSERVICE_DOMAINS:I = 0x232e

.field public static final DATALOADER_KEY_STRING_KEY_TOKEN:I = 0x232f

.field public static final DATALOADER_KEY_STRING_MDL_EXTENSION_OPTS:I = 0x5dc

.field public static final DATALOADER_KEY_STRING_MDL_TEMP_OPTS:I = 0x5de

.field public static final DATALOADER_KEY_STRING_N80_OPTS:I = 0x5e7

.field public static final DATALOADER_KEY_STRING_NETSCHEDULER_CONFIG_STR:I = 0x47d

.field public static final DATALOADER_KEY_STRING_NET_CACHE_DIR:I = 0x66

.field public static final DATALOADER_KEY_STRING_OWN_DNS_HOST:I = 0x6b

.field public static final DATALOADER_KEY_STRING_P2P_DOMAINS:I = 0x232d

.field public static final DATALOADER_KEY_STRING_PRECISE_PRELOAD_CONFIG:I = 0x7ed

.field public static final DATALOADER_KEY_STRING_SETTINGS_DOMAIN:I = 0x232a

.field public static final DATALOADER_KEY_STRING_SETTINGS_REGION_CN_HOST:I = 0x74

.field public static final DATALOADER_KEY_STRING_SETTINGS_REGION_SG_HOST:I = 0x75

.field public static final DATALOADER_KEY_STRING_SETTINGS_REGION_US_HOST:I = 0x76

.field public static final DATALOADER_KEY_STRING_SET_CUSTON_UA_1:I = 0x5e2

.field public static final DATALOADER_KEY_STRING_SET_CUSTON_UA_2:I = 0x5e3

.field public static final DATALOADER_KEY_STRING_SET_CUSTON_UA_3:I = 0x5e4

.field public static final DATALOADER_KEY_STRING_STO_STRATEGY_CONFIG:I = 0x7d7

.field public static final DATALOADER_KEY_STRING_TTQUICHE_OPTS:I = 0x5e8

.field public static final DATALOADER_KEY_STRING_UPDATE_CACHE_DIR:I = 0x7ee

.field public static final DATALOADER_KEY_STRING_VDP_EXT_DYNAMIC_INFO:I = 0x83a

.field public static final DATALOADER_KEY_STRING_VDP_EXT_GLOBAL_INFO:I = 0x835

.field public static final DATALOADER_KEY_STRING_VDP_FILE_KEY_REGULAR_EXPRESSION:I = 0x2ee3

.field public static final DATALOADER_KEY_STR_NOTIFY_NOT_ONLY_NETWORK_ERROR_CODES:I = 0x233c

.field public static final DATALOADER_KEY_STR_SPEED_ENGINE_SETTING:I = 0x495

.field public static final DATALOADER_KEY_STR_VDP_ABGROUP_ID:I = 0x453

.field public static final DATALOADER_KEY_STR_VDP_ABTEST_ID:I = 0x452

.field public static final DATALOADER_PRELOADER_PRIORITY_DEFAULT:I = 0x0

.field public static final DATALOADER_PRELOADER_PRIORITY_HIGH:I = 0x64

.field public static final DATALOADER_PRELOADER_PRIORITY_HIGHEST:I = 0x2710

.field public static final DATALOADER_PRELOADER_PRIORITY_IDLE:I = 0xa

.field public static final DATALOADER_PRELOAD_STRAGETY_ALLOW_PRELOAD_WHEN_PLAY:I = 0x0

.field public static final DATALOADER_PRELOAD_STRAGETY_CENTER:I = 0xc8

.field public static final DATALOADER_PRELOAD_STRAGETY_NEW:I = 0x64

.field public static final DATALOADER_PRELOAD_STRAGETY_NOT_ALLOW_PLAYING_KEY_PRELOAD:I = 0x1

.field public static final DATALOADER_PRELOAD_STRAGETY_NOT_ALLOW_PRELOAD_WHEN_PLAY:I = 0x2

.field public static final DATALOADER_PRELOAD_WAIT_LIST_IS_QUEUE:I = 0x1

.field public static final DATALOADER_PRELOAD_WAIT_LIST_IS_STACK:I = 0x0

.field public static final DATALOADER_SPEED_TEST_BY_TIMEINTERNAL_NOTIFY_BY_GENERAL_SPEEDINFO:I = 0x1

.field public static final DATALOADER_SPEED_TEST_BY_TIMEINTERNAL_NOTIFY_BY_TIMEINTERNAL_SPEEDINFO:I = 0x2

.field public static final ERROR_TYPE_FETCHDATA:I = 0x3

.field public static final ERROR_TYPE_FETCHVIDEOMODEL:I = 0x1

.field public static final ERROR_TYPE_FILEOPERATION:I = 0x4

.field public static final ERROR_TYPE_MODULESTART:I = 0x2

.field public static final ERROR_TYPE_NONE:I = 0x0

.field public static final IsClose:I = 0x1

.field public static final IsPlayTask:I = 0x1

.field public static final IsPreloadTask:I = 0x2

.field public static final IsStart:I = 0x0

.field public static final IsUnknown:I = 0x0

.field private static final MAX_URL_LENGTH:I = 0xc18

.field public static final MDL_PREFIX:Ljava/lang/String; = "mdl://"

.field private static final PLAYER_CLASS_NAME:Ljava/lang/String; = "com.ss.ttm.player.TTPlayer"

.field public static final PRELOAD_DEFAULT_SCENE:Ljava/lang/String; = "default"

.field public static final PRELOAD_PROBETYPE_INTERVAL:I = 0x0

.field public static final PRELOAD_PROBETYPE_PLAYTASKPROGRESS:I = 0x1

.field private static final PRIVATE_MESSAGE_ADD_MEDIA_CENTER:I = 0x6f

.field private static final PRIVATE_MESSAGE_ADD_PRIORITY_PRELOAD_TASK:I = 0x73

.field private static final PRIVATE_MESSAGE_FOCUS_MEDIA:I = 0x72

.field private static final PRIVATE_MESSAGE_REMOVE_MEDIA_CENTER:I = 0x70

.field private static final PRIVATE_MESSAGE_REMOVE_MEDIA_LIST_CENTER:I = 0x71

.field private static final PRIVATE_MESSAGE_REMOVE_PRIORITY_PRELOAD_TASK:I = 0x74

.field public static final STRATEGY_INTERACTION_BLOCK_DURATION_NON_PRELOADED:I = 0x79

.field public static final STRATEGY_INTERACTION_BLOCK_DURATION_PRELOADED:I = 0x78

.field private static final TAG:Ljava/lang/String; = "DataLoaderHelper"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_mdl_sample"


# instance fields
.field private volatile isProxyLibraryLoaded:Z

.field private mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

.field private mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

.field private final mAllUsingEngies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mAudioPreloadFirst:Z

.field private mBackupLoaderType:I

.field private mClasssLoader:Ljava/lang/ClassLoader;

.field private mCloseLocalServer:Z

.field private mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

.field private mContext:Landroid/content/Context;

.field private mCurrentAccessType:I

.field private mDashAudioPreloadMinSize:I

.field private mDashAudioPreloadRatio:I

.field private mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

.field private mDemuxerHandle:J

.field private mDidConfigMdlV2:Z

.field private mDisableFilePathCheck:I

.field private mEnableBackupIP:I

.field private mEnableBufferPreload:I

.field private mEnableCenterPreloadProgressCallback:I

.field private mEnableCheckPreloadUrls:I

.field private mEnableDumpLibMd5:I

.field private mEnableFirstNativeMDL:I

.field private mEnableHLSProxy:I

.field private mEnableHls:I

.field private mEnableLibManager:I

.field private mEnableLoadMdlv2Fulllib:I

.field private mEnableMdlProtocol:Z

.field private mEnableMdlV2:I

.field private mEnableNetworkChangedListen:I

.field private mEnableNotOnlyNotifyNetError:I

.field private mEnableNotifyError:I

.field private mEnablePreParseHost:I

.field private mEnablePreloadAllTs:I

.field private mEnablePreloadFirstTs:I

.field private mEnableReportSpeed:I

.field private mEnableSetMDLNetStatus:I

.field private mEnableSplitPreload:I

.field private mEnableStrategyCenterCancelAll:I

.field private mEnableVideoModelHitCacheCallback:I

.field private final mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

.field private mException:Ljava/lang/Exception;

.field private mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

.field private mFloatSize:I

.field private mForbidNativeMDLForOriUrl:Z

.field private mHLSProxyValid:Z

.field private mHeartBeat:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

.field private mHeartBeatInterval:I

.field private mInitializeErrorString:Ljava/lang/String;

.field private mInitializeState:I

.field private mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

.field private volatile mInnerDataloaderStartComplete:Z

.field private mInvalidCode:I

.field private mInvalidMdlProcotol:Z

.field private final mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

.field private final mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

.field private mMdlDataSourceId:I

.field private mMdlOldPreloadStrategy:I

.field private mMdlPreloadStrategy:I

.field private mMdlProtocolHandle:J

.field private mModelCache:Lcom/ss/ttvideoengine/VideoModelCache;

.field private mNeedDLLoadP2PLib:I

.field private mNeedMDLLoadMDLV2Lib:Z

.field private mNeedSpeedTestByTimeInternal:I

.field private mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

.field private mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyNetErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadPreConnect:I

.field private mPreloadTaskIgnorePlayerStall:I

.field private mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

.field private final mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

.field private volatile mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

.field private volatile mReportLogEnable:Z

.field private volatile mState:I

.field private mSupportHls:Z

.field private mTestSpeedListener:Lcom/ss/ttvideoengine/TestSpeedListener;

.field private mUpdatePlaySourceId:Ljava/lang/String;

.field private mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

.field private mVCTrace:Lcom/bytedance/vcloud/vctrace/VCTrace;

.field private mVersionInfo:Ljava/lang/String;

.field private mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 5
    new-instance v2, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    invoke-direct {v2}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;-><init>()V

    iput-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 6
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mTestSpeedListener:Lcom/ss/ttvideoengine/TestSpeedListener;

    const/4 v2, 0x1

    .line 7
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 8
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-direct {v3, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 9
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-direct {v3, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 10
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-direct {v3, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 11
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-direct {v3, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 13
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 15
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVCTrace:Lcom/bytedance/vcloud/vctrace/VCTrace;

    .line 17
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-direct {v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;-><init>()V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 18
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mClasssLoader:Ljava/lang/ClassLoader;

    .line 20
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mModelCache:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 21
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mException:Ljava/lang/Exception;

    .line 22
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVersionInfo:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeat:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

    .line 24
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 25
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    .line 26
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 27
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedMDLLoadMDLV2Lib:Z

    const-wide/16 v3, -0x1

    .line 28
    iput-wide v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlProtocolHandle:J

    const-wide/16 v3, 0x0

    .line 29
    iput-wide v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDemuxerHandle:J

    .line 30
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    .line 31
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlDataSourceId:I

    .line 32
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 33
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeatInterval:I

    .line 34
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableReportSpeed:I

    .line 35
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNetworkChangedListen:I

    .line 36
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 37
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    const/4 v3, -0x1

    .line 38
    iput v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCurrentAccessType:I

    .line 39
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableDumpLibMd5:I

    .line 40
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedSpeedTestByTimeInternal:I

    .line 41
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAudioPreloadFirst:Z

    .line 42
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTaskIgnorePlayerStall:I

    .line 43
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUpdatePlaySourceId:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mFloatSize:I

    .line 45
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadPreConnect:I

    .line 46
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreParseHost:I

    .line 47
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBackupIP:I

    .line 48
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableFirstNativeMDL:I

    .line 49
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    .line 50
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHls:I

    .line 51
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mSupportHls:Z

    .line 52
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 53
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z

    .line 54
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mBackupLoaderType:I

    .line 55
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlPreloadStrategy:I

    .line 56
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 57
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 58
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDidConfigMdlV2:Z

    .line 59
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBufferPreload:I

    .line 60
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableSetMDLNetStatus:I

    .line 61
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableStrategyCenterCancelAll:I

    .line 62
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCheckPreloadUrls:I

    .line 63
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableSplitPreload:I

    .line 64
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadMinSize:I

    .line 65
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadRatio:I

    .line 66
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mForbidNativeMDLForOriUrl:Z

    .line 67
    new-instance v3, Lcom/ss/ttvideoengine/preload/PreloadUtil;

    invoke-direct {v3}, Lcom/ss/ttvideoengine/preload/PreloadUtil;-><init>()V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 68
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLibManager:I

    .line 69
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 70
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadFirstTs:I

    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadAllTs:I

    .line 72
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLoadMdlv2Fulllib:I

    .line 73
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableVideoModelHitCacheCallback:I

    .line 74
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHLSProxyValid:Z

    .line 75
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCenterPreloadProgressCallback:I

    .line 76
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotifyError:I

    .line 77
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotOnlyNotifyNetError:I

    .line 78
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDisableFilePathCheck:I

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNotifyNetErrors:Ljava/util/ArrayList;

    .line 80
    sget-object v3, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->None:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    .line 81
    sget-object v3, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->Default:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 82
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataloaderStartComplete:Z

    .line 83
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mModelCache:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 85
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 86
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->getDefaultonfigure()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 87
    new-instance v1, Lcom/bytedance/vcloud/vctrace/VCTrace;

    invoke-direct {v1}, Lcom/bytedance/vcloud/vctrace/VCTrace;-><init>()V

    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVCTrace:Lcom/bytedance/vcloud/vctrace/VCTrace;

    .line 88
    new-instance v1, Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    move-result-object v3

    iget v3, v3, Lcom/ss/ttvideoengine/EngineGlobalConfig;->dataLoaderHelperLockType:I

    invoke-direct {v1, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;-><init>(I)V

    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 89
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHls:I

    .line 90
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 91
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iput v0, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSBackType:I

    .line 92
    sput v0, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalBackType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;-><init>()V

    return-void
.end method

.method private _addP2pFlag(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    array-length v0, p2

    .line 6
    if-ge p1, v0, :cond_2

    .line 7
    .line 8
    aget-object v0, p2, p1

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    aget-object v0, p2, p1

    .line 17
    .line 18
    const-string v1, "p2p=0"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->appendQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    aput-object v0, p2, p1

    .line 25
    .line 26
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return-object p2
.end method

.method private _addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/PreloaderVideoModelItem;Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    .locals 6

    .line 1
    const-string v0, "preload"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "DataLoaderHelper"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p1, "[preload] key invalid."

    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 25
    .line 26
    if-eqz v0, :cond_17

    .line 27
    .line 28
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_9

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->containItem(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_16

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->containItem(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "[preload] _addTask key="

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", videoId="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ", preloadSize="

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", vidItem="

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", videoModelItem="

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", urlItem="

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 119
    .line 120
    if-eqz p5, :cond_5

    .line 121
    .line 122
    iget-object v1, p5, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    :goto_0
    move-object v0, v1

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    if-eqz p6, :cond_6

    .line 129
    .line 130
    iget-object v1, p6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 131
    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    :goto_1
    const/4 v1, 0x0

    .line 136
    const-string/jumbo v2, "unknown"

    .line 137
    .line 138
    .line 139
    const/4 v3, -0x1

    .line 140
    if-eqz p7, :cond_a

    .line 141
    .line 142
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getTag()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getTag()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :goto_2
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getSubTag()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_8

    .line 166
    .line 167
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getSubTag()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_8
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getPlayIndexGap()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eq v4, v3, :cond_9

    .line 176
    .line 177
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getPlayIndexGap()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    :cond_9
    :goto_3
    move-object v5, v2

    .line 182
    move-object v2, v1

    .line 183
    move-object v1, v5

    .line 184
    goto :goto_6

    .line 185
    :cond_a
    if-eqz p6, :cond_d

    .line 186
    .line 187
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getTag()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_b
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getTag()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    :goto_4
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getSubTag()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_c

    .line 211
    .line 212
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getSubTag()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    :cond_c
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getPlayIndexGap()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eq v4, v3, :cond_9

    .line 221
    .line 222
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getPlayIndexGap()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    goto :goto_3

    .line 227
    :cond_d
    if-eqz p5, :cond_10

    .line 228
    .line 229
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getTag()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_e

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_e
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getTag()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :goto_5
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getSubTag()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-nez v4, :cond_f

    .line 253
    .line 254
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getSubTag()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :cond_f
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getPlayIndexGap()I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eq v4, v3, :cond_9

    .line 263
    .line 264
    invoke-virtual {p5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getPlayIndexGap()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    goto :goto_3

    .line 269
    :cond_10
    move-object v2, v1

    .line 270
    :goto_6
    new-instance v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 271
    .line 272
    invoke-direct {v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, p1, v0, p3, p4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->setUp(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;J)V

    .line 276
    .line 277
    .line 278
    iput-object p2, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 279
    .line 280
    iput-object p5, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 281
    .line 282
    iput-object p6, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 283
    .line 284
    iput-object p7, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 285
    .line 286
    iput-object v1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    .line 287
    .line 288
    iput-object v2, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    .line 289
    .line 290
    iput v3, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPlayIndexGap:I

    .line 291
    .line 292
    if-eqz p7, :cond_12

    .line 293
    .line 294
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getPriorityLevel()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    iput p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 299
    .line 300
    iget-object p1, p7, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 301
    .line 302
    if-eqz p1, :cond_11

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isFetchSmartUrl()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_11

    .line 309
    .line 310
    new-instance p1, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;

    .line 311
    .line 312
    invoke-direct {p1, p0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->setListener(Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;)V

    .line 316
    .line 317
    .line 318
    :cond_11
    invoke-virtual {p7}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getGroupId()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iput-object p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    .line 323
    .line 324
    :cond_12
    if-eqz p6, :cond_13

    .line 325
    .line 326
    iget-object p1, p6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 327
    .line 328
    iput-object p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 329
    .line 330
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getPriorityLevel()I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    iput p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 335
    .line 336
    iget p1, p6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    .line 337
    .line 338
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 339
    .line 340
    div-float/2addr p1, p2

    .line 341
    iput p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    .line 342
    .line 343
    iget-wide p1, p6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 344
    .line 345
    iput-wide p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadLowerLimitSize:J

    .line 346
    .line 347
    iget-wide p1, p6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    .line 348
    .line 349
    iput-wide p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadUpperLimitSize:J

    .line 350
    .line 351
    invoke-virtual {p6}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getGroupId()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iput-object p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    .line 356
    .line 357
    :cond_13
    iget-object p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 358
    .line 359
    if-eqz p1, :cond_14

    .line 360
    .line 361
    new-instance p1, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;

    .line 362
    .line 363
    invoke-direct {p1, p0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->setListener(Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getPriorityLevel()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    iput p1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 376
    .line 377
    :cond_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 378
    .line 379
    invoke-virtual {p1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_15

    .line 384
    .line 385
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startExecuteTask()V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_15
    const/16 p1, -0x3ea

    .line 390
    .line 391
    invoke-virtual {v4, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 392
    .line 393
    .line 394
    :goto_7
    return-void

    .line 395
    :cond_16
    :goto_8
    const-string p1, "[preload] add the same key task."

    .line 396
    .line 397
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_17
    :goto_9
    const-string p1, "[preload] need load mdl first."

    .line 402
    .line 403
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    return-void
.end method

.method private _apiStringForVid(Lcom/ss/ttvideoengine/PreloaderVidItem;)Ljava/lang/String;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v7, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getAuthorization()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 12
    .line 13
    iget-boolean v3, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 14
    .line 15
    iget-boolean v4, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 16
    .line 17
    iget-boolean v5, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 18
    .line 19
    iget-object v6, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->getAPIString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private _cacheEndNotifyEngine(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->toArray()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    iget-object v3, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v4, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 52
    .line 53
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 59
    .line 60
    iget-object v2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->notifyCacheEnd(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 66
    .line 67
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_getEnginesByRawKey(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ge v1, v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->notifyCacheEnd()V

    .line 112
    .line 113
    .line 114
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    :goto_2
    return-void
.end method

.method private _constructEnginePortaint(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "enable_engineportaint"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 9
    .line 10
    iget v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEnginePortrait:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    const-string p1, ""

    .line 54
    .line 55
    :goto_2
    return-object p1
.end method

.method private _doMl_addMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getSelectCallback()Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getSelectCallback()Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;)V

    .line 17
    .line 18
    .line 19
    move-object v5, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v5, v1

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move-object v6, v1

    .line 38
    iget-object v0, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isNeedConvertStrategyInfo()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->toStrategyInfo()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    move-object v4, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v4, v0

    .line 63
    :goto_1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCheckPreloadUrls:I

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    iget-object v0, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 99
    .line 100
    const/16 v2, 0x10

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    array-length v2, v1

    .line 107
    const/4 v3, 0x0

    .line 108
    :goto_2
    if-ge v3, v2, :cond_3

    .line 109
    .line 110
    aget-object v7, v1, v3

    .line 111
    .line 112
    invoke-direct {p0, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_supportProxy(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_4

    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-boolean v8, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isLast:Z

    .line 131
    .line 132
    const/4 v9, 0x0

    .line 133
    move-object v7, p2

    .line 134
    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->addMedia(Ljava/lang/String;Lcom/bytedance/vcloud/strategy/ISelectBitrateListener;Lcom/bytedance/vcloud/strategy/IPreloadTaskCallbackListener;Ljava/lang/String;ZZ)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method private _doMl_addPriorityTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getSelectCallback()Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getSelectCallback()Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, p0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, p0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->toStrategyInfo()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v2, p1, v0, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->addPriorityTask(Ljava/lang/String;Lcom/bytedance/vcloud/strategy/ISelectBitrateListener;Lcom/bytedance/vcloud/strategy/IPreloadTaskCallbackListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private _doMl_removeAllMedias(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->removeAllMedia(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private _doMl_removeMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private _doMl_removePriorityTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->removePriorityTask(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private _errorWithCode(IJLjava/lang/String;)Lcom/ss/ttvideoengine/utils/Error;
    .locals 5

    .line 1
    const/16 v0, -0x1388

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, -0xfa0

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, -0x7d0

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, -0xbb9

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, -0xbb8

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "task fail. reply task error."

    .line 25
    .line 26
    .line 27
    :goto_0
    move v1, p1

    .line 28
    goto :goto_3

    .line 29
    :pswitch_0
    const-string v0, "create preload task fail."

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "add the same key task."

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "Waiting for too many tasks, > 20"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/NetUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/16 v0, -0x26e8

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v0, -0x26d9

    .line 50
    .line 51
    :goto_1
    const-string/jumbo v1, "url invalid. response status code >= 400"

    .line 52
    .line 53
    .line 54
    :goto_2
    move-object v4, v1

    .line 55
    move v1, v0

    .line 56
    move-object v0, v4

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    const/16 v0, -0x26d8

    .line 59
    .line 60
    const-string v1, "server invalid. response status code >= 500"

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string v0, "media data content length invalid"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const-string v0, "request invalid."

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    const/16 v0, -0x26dc

    .line 70
    .line 71
    const-string/jumbo v1, "write file fail."

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_3
    const-wide/16 v2, 0x3

    .line 76
    .line 77
    cmp-long p2, p2, v2

    .line 78
    .line 79
    if-nez p2, :cond_6

    .line 80
    .line 81
    const-string p2, "kTTVideoErrorDomainDownload"

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const-string p2, "kTTVideoErrorDomainDataLoaderPreload"

    .line 85
    .line 86
    :goto_4
    new-instance p3, Lcom/ss/ttvideoengine/utils/Error;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "key = "

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p4, ", reason = "

    .line 102
    .line 103
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-direct {p3, p2, v1, p1, p4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object p3

    .line 117
    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _exectTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 51

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startExecuteTask()V

    return-void

    .line 2
    :cond_0
    iget-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    const-string v8, "DataLoaderHelper"

    if-nez v0, :cond_1

    .line 3
    const-string v0, "[preload] need load mdl first."

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 6
    :cond_3
    iget-object v1, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-virtual {v1, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 7
    iget-wide v9, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 8
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    if-eqz v1, :cond_37

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    sget-object v3, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    move-result v2

    const-string v3, "[preload] preload second"

    const-string v5, "[preload] preload video header size "

    const-string v14, ",timeStamp:"

    const-string v15, "[preload] preload millisecondOffset "

    const-wide v18, 0x408f400000000000L    # 1000.0

    const/high16 v20, 0x447a0000    # 1000.0f

    const-string v11, "[preload] preload videoOffset "

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    .line 11
    iget-object v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getDynamicType()Ljava/lang/String;

    move-result-object v2

    const-string v12, "segment_base"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 12
    iget-object v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    iget-object v9, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    sget v10, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    invoke-interface {v2, v9, v10, v0, v4}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v2

    .line 13
    iget-object v9, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    iget-object v10, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    sget v12, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    invoke-interface {v9, v10, v12, v0, v4}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    .line 14
    iget-wide v9, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 15
    const-string v12, "[preload] preload size  audio = "

    const-string v13, " ,video = "

    if-eqz v2, :cond_21

    if-eqz v0, :cond_21

    .line 16
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    move-result-object v4

    move-wide/from16 v24, v9

    .line 17
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    move-result-object v9

    .line 18
    iget-object v10, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    if-eqz v10, :cond_4

    .line 19
    iget-wide v12, v10, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecondOffset:J

    move-wide/from16 v28, v12

    .line 20
    iget-wide v12, v10, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mAudioHeaderExtraSize:J

    move-wide/from16 v30, v12

    .line 21
    iget-wide v12, v10, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mAudioPacketExtraOffset:J

    move-wide/from16 v32, v12

    .line 22
    iget-wide v12, v10, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoHeaderExtraSize:J

    move-wide/from16 v34, v12

    .line 23
    iget-wide v12, v10, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoPacketExtraOffset:J

    move-wide/from16 v49, v12

    move-wide/from16 v12, v28

    move-wide/from16 v28, v49

    goto :goto_1

    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    .line 24
    :goto_1
    iget-object v10, v0, Lcom/ss/ttvideoengine/model/VideoInfo;->mPacketOffset:Ljava/util/HashMap;

    move-object/from16 v36, v1

    const-string v1, "[preload] preload audioOffset "

    if-eqz v10, :cond_8

    move-object/from16 v37, v5

    long-to-double v5, v12

    div-double v5, v5, v18

    move-object/from16 v38, v3

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/ss/ttvideoengine/model/VideoInfo;->mPacketOffset:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 27
    iget-object v3, v0, Lcom/ss/ttvideoengine/model/VideoInfo;->mPacketOffset:Ljava/util/HashMap;

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 29
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 30
    iget-object v10, v2, Lcom/ss/ttvideoengine/model/VideoInfo;->mPacketOffset:Ljava/util/HashMap;

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 32
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 33
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v3, v9

    move-wide/from16 v9, v18

    goto :goto_2

    :cond_5
    move-object v3, v9

    const-wide/16 v9, 0x0

    :goto_2
    if-eqz v5, :cond_6

    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v39, v0

    goto :goto_3

    :cond_6
    move-object/from16 v39, v0

    const-wide/16 v5, 0x0

    .line 35
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v39, v0

    :goto_4
    move-object v3, v9

    goto :goto_5

    :cond_8
    move-object/from16 v39, v0

    move-object/from16 v38, v3

    move-object/from16 v37, v5

    goto :goto_4

    :goto_5
    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    .line 38
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isMDLPrecisePreloadEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getStartTimestamp()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-lez v0, :cond_d

    if-eqz v4, :cond_9

    .line 41
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v0

    move-object/from16 v40, v1

    int-to-long v0, v0

    goto :goto_7

    :cond_9
    move-object/from16 v40, v1

    const-wide/16 v0, 0x0

    :goto_7
    const/16 v15, 0x2f

    .line 42
    invoke-virtual {v2, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v15

    .line 43
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 v41, v2

    .line 44
    const-string v2, "-"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v11

    .line 45
    array-length v11, v2

    move-wide/from16 v18, v5

    const/4 v5, 0x2

    if-ne v11, v5, :cond_c

    const/4 v5, 0x1

    .line 46
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v16, 0x1

    add-long v5, v5, v16

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[preload] first moof range: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "header size: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v41, v2

    move-wide/from16 v18, v5

    move-object/from16 v42, v11

    if-eqz v3, :cond_b

    .line 48
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v2

    int-to-long v5, v2

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[preload] fitter info header size: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :cond_b
    const-string v2, "[preload] header size = 0"

    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-wide/16 v5, 0x0

    .line 51
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[preload] preload video header size:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",audio header size:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 52
    invoke-virtual {v11}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getStartTimestamp()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v14, v5

    move-wide/from16 v5, v18

    goto/16 :goto_e

    :cond_d
    move-object/from16 v40, v1

    move-object/from16 v41, v2

    move-wide/from16 v18, v5

    move-object/from16 v42, v11

    move-wide/from16 v5, v18

    const-wide/16 v0, 0x0

    :goto_9
    const-wide/16 v14, 0x0

    goto/16 :goto_e

    :cond_e
    move-object/from16 v40, v1

    move-object/from16 v41, v2

    move-wide/from16 v18, v5

    move-object/from16 v42, v11

    const-wide/16 v0, 0x0

    cmp-long v2, v12, v0

    if-lez v2, :cond_12

    if-eqz v4, :cond_12

    cmp-long v5, v9, v0

    if-nez v5, :cond_f

    long-to-float v5, v12

    div-float v5, v5, v20

    .line 54
    invoke-virtual {v4, v5}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v5

    int-to-long v5, v5

    goto :goto_a

    :cond_f
    move-wide v5, v9

    :goto_a
    cmp-long v9, v30, v0

    if-nez v9, :cond_10

    const-wide/32 v14, 0x19000

    goto :goto_b

    :cond_10
    move-wide/from16 v14, v30

    .line 55
    :goto_b
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v9, v14

    cmp-long v11, v5, v0

    if-lez v11, :cond_11

    sub-long v5, v5, v32

    cmp-long v11, v5, v0

    if-gez v11, :cond_11

    const-wide/16 v5, 0x0

    .line 56
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[preload] preload audio header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    move-wide v9, v5

    goto :goto_c

    :cond_12
    const-wide/16 v0, 0x0

    :goto_c
    if-lez v2, :cond_17

    if-eqz v3, :cond_17

    const-wide/16 v5, 0x0

    cmp-long v2, v18, v5

    if-nez v2, :cond_13

    long-to-float v2, v12

    div-float v2, v2, v20

    .line 57
    invoke-virtual {v3, v2}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v2

    int-to-long v5, v2

    move-wide/from16 v18, v5

    .line 58
    :cond_13
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v2

    int-to-long v5, v2

    iget-wide v14, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    cmp-long v2, v5, v14

    if-lez v2, :cond_14

    .line 59
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v2

    int-to-long v14, v2

    :cond_14
    add-long v5, v14, v34

    const-wide/16 v14, 0x0

    cmp-long v2, v18, v14

    if-lez v2, :cond_15

    sub-long v16, v18, v28

    cmp-long v2, v16, v14

    if-gez v2, :cond_16

    const-wide/16 v16, 0x0

    goto :goto_d

    :cond_15
    move-wide/from16 v16, v18

    .line 60
    :cond_16
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v37

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v14, v5

    move-wide/from16 v5, v16

    goto :goto_e

    :cond_17
    move-wide/from16 v5, v18

    goto/16 :goto_9

    .line 61
    :goto_e
    iget v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v3, :cond_1a

    .line 62
    invoke-virtual {v3, v2}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v2

    int-to-long v2, v2

    .line 63
    iget v11, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    invoke-virtual {v4, v11}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v4

    move-wide/from16 v16, v0

    int-to-long v0, v4

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v38

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " preload size audio = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v11, v27

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v14

    move-object/from16 v14, v40

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v42

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-wide v14, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadLowerLimitSize:J

    const-wide/16 v22, 0x0

    cmp-long v4, v14, v22

    move-wide/from16 v27, v5

    const-string v5, "[preload] preload size limit to"

    if-lez v4, :cond_18

    add-long v24, v2, v0

    cmp-long v4, v24, v14

    if-gez v4, :cond_18

    .line 68
    iput-wide v14, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadLowerLimitSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 70
    :cond_18
    iget-wide v14, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadUpperLimitSize:J

    const-wide/16 v22, 0x0

    cmp-long v4, v14, v22

    if-lez v4, :cond_19

    add-long v24, v2, v0

    cmp-long v4, v24, v14

    if-lez v4, :cond_19

    .line 71
    iput-wide v14, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadUpperLimitSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    :goto_f
    const-wide/16 v14, 0x0

    goto :goto_10

    :cond_19
    move-wide v4, v0

    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    move-wide/from16 v16, v0

    move-wide/from16 v18, v14

    move-object/from16 v11, v27

    move-wide/from16 v27, v5

    move-wide/from16 v2, v24

    move-wide v4, v2

    const/4 v0, 0x0

    goto :goto_f

    :goto_10
    cmp-long v1, v12, v14

    if-lez v1, :cond_1d

    .line 73
    iget-wide v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    move-object/from16 v6, p0

    .line 74
    iget v3, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadRatio:I

    if-lez v3, :cond_1c

    int-to-long v3, v3

    mul-long/2addr v3, v1

    const-wide/16 v12, 0x64

    .line 75
    div-long/2addr v3, v12

    .line 76
    iget v5, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadMinSize:I

    if-lez v5, :cond_1b

    int-to-long v12, v5

    cmp-long v12, v3, v12

    if-gez v12, :cond_1b

    int-to-long v3, v5

    :cond_1b
    move-wide/from16 v43, v9

    move-wide/from16 v12, v16

    move-wide/from16 v47, v18

    move-wide/from16 v45, v27

    move-object/from16 v14, v39

    move-wide v9, v1

    :goto_11
    move-object/from16 v1, v26

    goto/16 :goto_14

    :cond_1c
    move-wide v3, v1

    move-wide/from16 v43, v9

    move-wide/from16 v12, v16

    move-wide/from16 v47, v18

    move-wide/from16 v45, v27

    move-object/from16 v14, v39

    move-wide v9, v3

    goto :goto_11

    :cond_1d
    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    cmp-long v1, v2, v12

    if-lez v1, :cond_1f

    cmp-long v1, v4, v12

    if-lez v1, :cond_1f

    .line 77
    iget-wide v12, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_1e

    cmp-long v1, v4, v12

    if-nez v1, :cond_1e

    goto :goto_13

    :cond_1e
    move-wide/from16 v43, v9

    move-wide/from16 v12, v16

    move-wide/from16 v47, v18

    move-object/from16 v1, v26

    move-wide/from16 v45, v27

    move-object/from16 v14, v39

    :goto_12
    move-wide v9, v2

    move-wide v3, v4

    goto/16 :goto_14

    .line 78
    :cond_1f
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    move-object/from16 v12, v41

    .line 79
    invoke-virtual {v12, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v13

    move-object/from16 v14, v39

    .line 80
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v0

    if-lez v13, :cond_20

    if-lez v0, :cond_20

    .line 81
    iget-wide v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    long-to-float v4, v2

    int-to-float v5, v13

    add-int/2addr v13, v0

    int-to-float v13, v13

    div-float/2addr v5, v13

    mul-float/2addr v4, v5

    float-to-long v4, v4

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v0, v13

    mul-float/2addr v2, v0

    float-to-long v2, v2

    move-wide/from16 v49, v2

    move-wide v2, v4

    move-wide/from16 v4, v49

    :cond_20
    move-wide/from16 v43, v9

    move-object/from16 v41, v12

    move-wide/from16 v12, v16

    move-wide/from16 v47, v18

    move-wide/from16 v45, v27

    const/4 v0, 0x0

    goto :goto_12

    :cond_21
    move-object v14, v0

    move-object/from16 v36, v1

    move-wide/from16 v24, v9

    move-object v1, v12

    move-object v11, v13

    move-object v12, v2

    move-object/from16 v41, v12

    move-wide/from16 v3, v24

    move-wide v9, v3

    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    .line 82
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v1, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAudioPreloadFirst:Z

    if-eqz v1, :cond_22

    if-eqz v14, :cond_22

    const/16 v1, 0xf

    .line 84
    invoke-virtual {v14, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    move-object/from16 v1, v36

    .line 86
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v7, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v2

    .line 88
    iput-wide v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 89
    iput-wide v12, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    move-wide v15, v12

    move-wide/from16 v11, v43

    .line 90
    iput-wide v11, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 91
    invoke-direct {v6, v14, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_prepareUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 92
    invoke-direct {v6, v7, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    goto :goto_15

    :cond_22
    move-wide v15, v12

    move-object/from16 v1, v36

    move-wide/from16 v11, v43

    :goto_15
    if-eqz v41, :cond_23

    move-object/from16 v5, v41

    const/16 v2, 0xf

    .line 93
    invoke-virtual {v5, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v13

    .line 94
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 95
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v7, v13}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v2

    .line 97
    iput-wide v9, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    move-wide/from16 v17, v9

    move-wide/from16 v9, v47

    .line 98
    iput-wide v9, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    move-wide/from16 v9, v45

    .line 99
    iput-wide v9, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 100
    invoke-direct {v6, v5, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_prepareUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 101
    invoke-direct {v6, v7, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    goto :goto_16

    :cond_23
    move-wide/from16 v17, v9

    .line 102
    :goto_16
    iget-boolean v2, v6, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAudioPreloadFirst:Z

    if-nez v2, :cond_24

    if-eqz v14, :cond_24

    const/16 v2, 0xf

    .line 103
    invoke-virtual {v14, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 105
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v7, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v2

    .line 107
    iput-wide v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    move-wide v9, v15

    .line 108
    iput-wide v9, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 109
    iput-wide v11, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 110
    invoke-direct {v6, v14, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_prepareUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 111
    invoke-direct {v6, v7, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    :cond_24
    move v11, v0

    move-object/from16 v36, v1

    move-wide v12, v3

    move-wide/from16 v9, v17

    goto/16 :goto_22

    :cond_25
    move-object/from16 v36, v1

    move-wide/from16 v24, v9

    const-wide/16 v15, 0x0

    goto/16 :goto_21

    :cond_26
    move-object v2, v3

    move-object v3, v11

    move-object v11, v5

    .line 112
    iget-object v4, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    iget-object v5, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    const/4 v12, 0x1

    .line 113
    invoke-interface {v4, v5, v0, v12}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v4, 0xf

    .line 114
    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v7, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v4

    .line 118
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    move-result-object v5

    .line 119
    iget-object v12, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    move-wide/from16 v24, v9

    if-eqz v12, :cond_27

    .line 120
    iget-wide v9, v12, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecondOffset:J

    move-wide/from16 v26, v9

    .line 121
    iget-wide v9, v12, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoHeaderExtraSize:J

    .line 122
    iget-wide v12, v12, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoPacketExtraOffset:J

    move-wide/from16 v49, v9

    move-wide/from16 v9, v26

    move-wide/from16 v26, v12

    move-wide/from16 v12, v49

    goto :goto_17

    :cond_27
    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v26, 0x0

    .line 123
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isMDLPrecisePreloadEnable()Z

    move-result v21

    if-eqz v21, :cond_29

    .line 124
    iget-object v12, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    if-eqz v12, :cond_28

    .line 125
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getStartTimestamp()J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-lez v12, :cond_28

    if-eqz v5, :cond_28

    .line 126
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v36, v1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    move-wide/from16 v16, v12

    .line 128
    invoke-virtual {v11}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getStartTimestamp()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v8, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v38, v2

    move-wide/from16 v11, v16

    const-wide/16 v1, 0x0

    const-wide/16 v22, 0x0

    goto :goto_1a

    :cond_28
    move-object/from16 v36, v1

    move-object/from16 v38, v2

    const-wide/16 v22, 0x0

    goto :goto_19

    :cond_29
    move-object/from16 v36, v1

    const-wide/16 v22, 0x0

    cmp-long v1, v9, v22

    if-lez v1, :cond_2b

    if-eqz v5, :cond_2b

    long-to-float v1, v9

    div-float v1, v1, v20

    .line 130
    invoke-virtual {v5, v1}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v1

    move-object/from16 v38, v2

    int-to-long v1, v1

    cmp-long v11, v12, v22

    if-nez v11, :cond_2a

    const-wide/32 v16, 0x19000

    goto :goto_18

    :cond_2a
    move-wide/from16 v16, v12

    .line 131
    :goto_18
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    move-result v11

    int-to-long v11, v11

    add-long v11, v11, v16

    goto :goto_1a

    :cond_2b
    move-object/from16 v38, v2

    :goto_19
    move-wide/from16 v1, v22

    move-wide v11, v1

    :goto_1a
    cmp-long v13, v9, v22

    if-lez v13, :cond_2f

    .line 132
    iget-object v13, v0, Lcom/ss/ttvideoengine/model/VideoInfo;->mPacketOffset:Ljava/util/HashMap;

    if-eqz v13, :cond_2e

    move-wide/from16 v16, v1

    long-to-double v1, v9

    div-double v1, v1, v18

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 134
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2d

    .line 135
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v1, v26, v22

    if-lez v1, :cond_2c

    sub-long v17, v17, v26

    cmp-long v1, v17, v22

    if-gez v1, :cond_2c

    const-wide/16 v1, 0x0

    goto :goto_1b

    :cond_2c
    move-wide/from16 v1, v17

    goto :goto_1b

    :cond_2d
    move-wide/from16 v1, v16

    .line 136
    :goto_1b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2e
    move-wide/from16 v16, v1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[preload] packet offset info not avaiable preload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2f
    move-wide/from16 v16, v1

    :goto_1c
    move-wide/from16 v1, v16

    .line 139
    :goto_1d
    iget-wide v9, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 140
    iget v3, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-lez v13, :cond_33

    if-eqz v5, :cond_33

    .line 141
    invoke-virtual {v5, v3}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeBySecond(F)I

    move-result v3

    if-lez v3, :cond_30

    int-to-long v9, v3

    const/4 v3, 0x1

    goto :goto_1e

    :cond_30
    const/4 v3, 0x0

    .line 142
    :goto_1e
    iget-wide v13, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadLowerLimitSize:J

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-lez v5, :cond_31

    cmp-long v5, v9, v13

    if-gez v5, :cond_31

    move-wide v9, v13

    const/4 v3, 0x0

    .line 143
    :cond_31
    iget-wide v13, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadUpperLimitSize:J

    cmp-long v5, v13, v15

    if-lez v5, :cond_32

    cmp-long v5, v9, v13

    if-lez v5, :cond_32

    move-wide v9, v13

    const/4 v3, 0x0

    .line 144
    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v38

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " ,video size = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_33
    const-wide/16 v15, 0x0

    const/4 v3, 0x0

    .line 145
    :goto_1f
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    move-result v5

    sget v13, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    if-ne v5, v13, :cond_34

    move-wide/from16 v24, v9

    goto :goto_20

    :cond_34
    move-wide v15, v9

    .line 146
    :goto_20
    iput-wide v9, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 147
    iput-wide v1, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 148
    iput-wide v11, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 149
    invoke-direct {v6, v0, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_prepareUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 150
    invoke-direct {v6, v7, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    move v11, v3

    move-wide v12, v15

    move-wide/from16 v9, v24

    goto :goto_22

    :goto_21
    move-wide v12, v15

    move-wide/from16 v9, v24

    const/4 v11, 0x0

    .line 151
    :goto_22
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    .line 152
    const-string v0, "invalid videoModel"

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startExecuteTask()V

    return-void

    .line 154
    :cond_35
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    if-eqz v0, :cond_36

    move-object/from16 v1, v36

    .line 155
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/PreloaderVidItemListener;->onUsingUrlInfos(Ljava/util/List;)V

    goto :goto_23

    :cond_36
    move-object/from16 v1, v36

    .line 156
    :goto_23
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 157
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 158
    iput-object v1, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->usingUrlInfos:Ljava/util/List;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    goto/16 :goto_25

    :cond_37
    move-wide/from16 v24, v9

    const-wide/16 v15, 0x0

    .line 160
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 161
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_39

    .line 162
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 163
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrls()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    .line 164
    iget-wide v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 165
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 166
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 167
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->customHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_headerString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCustomHeader:Ljava/lang/String;

    .line 168
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getPreloadFooterSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadFooterSize:J

    .line 169
    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrlExpireTimes()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 170
    invoke-direct {v6, v7, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    :cond_38
    const/4 v9, 0x0

    goto :goto_24

    .line 171
    :cond_39
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 172
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 173
    iget-object v1, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    iget-object v2, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    iget v3, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    const/4 v4, 0x1

    iget-object v5, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQueryProvideMode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 174
    iget-wide v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    iput-wide v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 175
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 176
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrls()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    .line 177
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 178
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->customHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_headerString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCustomHeader:Ljava/lang/String;

    .line 179
    iget-object v0, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getUrlExpireTimes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 180
    invoke-direct {v6, v7, v10}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    .line 181
    iget-object v0, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    iget-object v1, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    iget-object v2, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 182
    const-string v1, "exect preload task by provider mode, key is %s; videoId = %s proxyurl:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    move v11, v9

    move-wide v12, v15

    move-wide/from16 v9, v24

    .line 184
    :cond_3a
    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 185
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 186
    iput v11, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadType:I

    .line 187
    iput-wide v9, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->videoPreloadSize:J

    .line 188
    iput-wide v12, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->audioPreloadSize:J

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[preload] notify info. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startExecuteTask()V

    return-void
.end method

.method private _getEnginesByRawKey(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    const-string v0, "DataLoaderHelper"

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "get engine ref,rawKey = "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " engine ref count: "

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method private _ml_addMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 22
    .line 23
    const/16 p2, 0x6f

    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_addMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private _ml_removeAllMedias(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 24
    .line 25
    const/16 p2, 0x71

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removeAllMedias(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private _ml_removeMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 20
    .line 21
    const/16 p2, 0x70

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private _notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mDidCanceled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mDidCanceled:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method private _onHeartBeatFire(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getInstance()Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getPlayWastDataSize()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    const-string v4, "_play_waste_data"

    .line 16
    .line 17
    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getInstance()Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getPlayConsumedSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    const-string v2, "_play_consumed_data"

    .line 33
    .line 34
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_1
    return-object p1
.end method

.method private _prepareUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 8

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    if-eqz p1, :cond_e

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    const/16 v1, 0x10

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xf

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p2, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const v4, -0x186a1

    .line 26
    .line 27
    .line 28
    if-eqz v1, :cond_d

    .line 29
    .line 30
    array-length v5, v1

    .line 31
    const/4 v6, 0x1

    .line 32
    if-ge v5, v6, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, [Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    iget-boolean v5, v5, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    iget-boolean v5, v5, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v5, 0x0

    .line 57
    :goto_0
    invoke-direct {p0, v5, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_addP2pFlag(Z[Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    if-eqz v5, :cond_7

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_7

    .line 77
    .line 78
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object v7, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {v5, v7, p1}, Lcom/ss/ttvideoengine/PreloaderFilePathListener;->cacheFilePath(Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDisableFilePathCheck:I

    .line 91
    .line 92
    if-nez v7, :cond_6

    .line 93
    .line 94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_5

    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move-object v6, v5

    .line 108
    :cond_5
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_a

    .line 113
    .line 114
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v2, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    move-object v6, v5

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 124
    .line 125
    if-eqz v5, :cond_a

    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_a

    .line 132
    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_a

    .line 138
    .line 139
    iget-object v5, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iget-object v7, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 146
    .line 147
    invoke-interface {v5, v7, p1}, Lcom/ss/ttvideoengine/PreloaderFilePathListener;->cacheFilePath(Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iget v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDisableFilePathCheck:I

    .line 152
    .line 153
    if-nez v7, :cond_6

    .line 154
    .line 155
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_9

    .line 160
    .line 161
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_8

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    move-object v6, v5

    .line 169
    :cond_9
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_a

    .line 174
    .line 175
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {v2, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :cond_a
    :goto_3
    if-nez v3, :cond_b

    .line 182
    .line 183
    invoke-virtual {p2, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_b
    if-nez v3, :cond_c

    .line 188
    .line 189
    invoke-virtual {p2, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_c
    iput-object v2, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 194
    .line 195
    iput-object p1, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 196
    .line 197
    const/4 v4, 0x5

    .line 198
    invoke-virtual {p1, v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iput-object v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mDecryptionKey:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iput-object v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 209
    .line 210
    iput-object v1, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    .line 211
    .line 212
    iput-object v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/MDLExtraInfoHelper;->createMDLExtraInfo(Lcom/ss/ttvideoengine/model/VideoInfo;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 219
    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v1, "[preload] prepare url info. videoId = "

    .line 226
    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object p2, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p2, ", key is "

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p2, ", resolution = "

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object p2, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 249
    .line 250
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/Resolution;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_d
    :goto_4
    const-string p1, "[preload] url info, urls info invalid"

    .line 266
    .line 267
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_e
    :goto_5
    const-string p1, "[preload] prepare url info fail. info or taskItem is null"

    .line 275
    .line 276
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method private _processCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, ","

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x4

    .line 13
    if-lt v1, v2, :cond_2

    .line 14
    .line 15
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    aget-object v1, p1, v1

    .line 22
    .line 23
    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    aget-object v1, p1, v1

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 45
    .line 46
    :cond_1
    const/4 v1, 0x1

    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    aget-object p1, p1, v1

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 66
    .line 67
    :cond_2
    return-object v0
.end method

.method private _progressInfoString(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;Z)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_1a

    .line 6
    .line 7
    iget-object v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_d

    .line 16
    .line 17
    :cond_0
    iget-object v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ","

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x3

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :try_start_0
    aget-object v3, v2, v3

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    const/4 v3, 0x1

    .line 42
    aget-object v7, v2, v3

    .line 43
    .line 44
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const-wide/16 v9, 0x0

    .line 53
    .line 54
    cmp-long v11, v7, v9

    .line 55
    .line 56
    const/4 v12, 0x4

    .line 57
    const-string v13, "DataLoaderHelper"

    .line 58
    .line 59
    if-gtz v11, :cond_2

    .line 60
    .line 61
    :try_start_1
    iget v11, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 62
    .line 63
    if-eq v11, v12, :cond_2

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "[preload] mediaSize <= 0 return "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v13, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto/16 :goto_c

    .line 90
    .line 91
    :cond_2
    const/4 v11, 0x2

    .line 92
    aget-object v14, v2, v11

    .line 93
    .line 94
    const-string v15, ""

    .line 95
    .line 96
    array-length v9, v2

    .line 97
    if-lt v9, v12, :cond_3

    .line 98
    .line 99
    aget-object v15, v2, v4

    .line 100
    .line 101
    :cond_3
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onLoaderProgress(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 104
    .line 105
    .line 106
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    const-string v2, " task progress. cache end. key = "

    .line 111
    .line 112
    if-eqz p2, :cond_8

    .line 113
    .line 114
    :try_start_2
    iget-object v9, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 115
    .line 116
    invoke-virtual {v9, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->itemForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    if-nez v9, :cond_7

    .line 121
    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v10, "[preload] preload temItem == null return "

    .line 128
    .line 129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v10, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-static {v13, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 145
    .line 146
    if-ne v0, v12, :cond_5

    .line 147
    .line 148
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 151
    .line 152
    .line 153
    iput-wide v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mCacheSizeFromZero:J

    .line 154
    .line 155
    iput-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mMediaSize:J

    .line 156
    .line 157
    iput-object v14, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 158
    .line 159
    iput v11, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mTaskType:I

    .line 160
    .line 161
    iput-object v15, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mLocalFilePath:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 164
    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v13, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_5
    iget v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCenterPreloadProgressCallback:I

    .line 190
    .line 191
    if-ne v2, v3, :cond_6

    .line 192
    .line 193
    if-ne v0, v4, :cond_6

    .line 194
    .line 195
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 196
    .line 197
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 198
    .line 199
    .line 200
    iput v11, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 201
    .line 202
    new-instance v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 203
    .line 204
    invoke-direct {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v3, :cond_6

    .line 215
    .line 216
    iput-wide v5, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCacheSize:J

    .line 217
    .line 218
    iput-wide v5, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 219
    .line 220
    iput-wide v7, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mMediaSize:J

    .line 221
    .line 222
    iput-object v15, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 223
    .line 224
    iput-object v14, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->setUp(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 227
    .line 228
    .line 229
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 230
    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLoadProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 234
    .line 235
    .line 236
    :cond_6
    :goto_0
    return-void

    .line 237
    :cond_7
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_8
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 241
    .line 242
    invoke-virtual {v4, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->itemForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    if-nez v9, :cond_9

    .line 247
    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v3, "[preload] play temItem == null return "

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v13, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_9
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 272
    .line 273
    :goto_1
    invoke-virtual {v9, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    if-eqz v10, :cond_a

    .line 278
    .line 279
    iput-wide v7, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mMediaSize:J

    .line 280
    .line 281
    iput-wide v5, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCacheSize:J

    .line 282
    .line 283
    iput-object v15, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 284
    .line 285
    :cond_a
    if-eqz v10, :cond_b

    .line 286
    .line 287
    if-eqz p2, :cond_b

    .line 288
    .line 289
    iget-wide v11, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadFooterSize:J

    .line 290
    .line 291
    const-wide/16 v16, 0x0

    .line 292
    .line 293
    cmp-long v11, v11, v16

    .line 294
    .line 295
    if-lez v11, :cond_b

    .line 296
    .line 297
    iget-boolean v11, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mIsFooterPreloaded:Z

    .line 298
    .line 299
    if-eqz v11, :cond_c

    .line 300
    .line 301
    :cond_b
    move-object/from16 v18, v4

    .line 302
    .line 303
    move-object v11, v13

    .line 304
    goto :goto_5

    .line 305
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v12, "[preload] preload footer"

    .line 311
    .line 312
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    move-object/from16 v18, v4

    .line 316
    .line 317
    iget-wide v3, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadFooterSize:J

    .line 318
    .line 319
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v13, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-wide v3, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mMediaSize:J

    .line 330
    .line 331
    move-object v11, v13

    .line 332
    iget-wide v12, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCacheSize:J

    .line 333
    .line 334
    cmp-long v19, v3, v12

    .line 335
    .line 336
    if-nez v19, :cond_d

    .line 337
    .line 338
    const/4 v3, 0x1

    .line 339
    goto :goto_5

    .line 340
    :cond_d
    iget-wide v5, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadFooterSize:J

    .line 341
    .line 342
    cmp-long v0, v3, v5

    .line 343
    .line 344
    if-gtz v0, :cond_e

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_e
    sub-long v2, v3, v5

    .line 348
    .line 349
    move-wide/from16 v16, v2

    .line 350
    .line 351
    :goto_2
    cmp-long v0, v16, v12

    .line 352
    .line 353
    if-gez v0, :cond_f

    .line 354
    .line 355
    :goto_3
    const/4 v3, 0x1

    .line 356
    goto :goto_4

    .line 357
    :cond_f
    move-wide/from16 v12, v16

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :goto_4
    iput-boolean v3, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mIsFooterPreloaded:Z

    .line 361
    .line 362
    iput-wide v12, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 363
    .line 364
    iput-wide v5, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 365
    .line 366
    invoke-direct {v1, v9, v10}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :goto_5
    iget-object v4, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_10

    .line 377
    .line 378
    move-object v4, v14

    .line 379
    goto :goto_6

    .line 380
    :cond_10
    iget-object v4, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 381
    .line 382
    :goto_6
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    invoke-virtual {v12, v4}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->getLoadProgressByRawKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    if-nez v12, :cond_11

    .line 391
    .line 392
    new-instance v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 393
    .line 394
    invoke-direct {v12, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 395
    .line 396
    .line 397
    :cond_11
    iget-object v13, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 398
    .line 399
    iput-object v13, v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mVideoId:Ljava/lang/String;

    .line 400
    .line 401
    if-eqz p2, :cond_12

    .line 402
    .line 403
    const/4 v3, 0x2

    .line 404
    :cond_12
    iput v3, v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 405
    .line 406
    invoke-virtual {v12, v9}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->setUp(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 407
    .line 408
    .line 409
    cmp-long v3, v7, v5

    .line 410
    .line 411
    if-nez v3, :cond_14

    .line 412
    .line 413
    if-eqz v10, :cond_14

    .line 414
    .line 415
    iget-object v3, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 416
    .line 417
    if-eqz v3, :cond_14

    .line 418
    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v13, "[preload] "

    .line 425
    .line 426
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget-object v13, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 430
    .line 431
    invoke-virtual {v13}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    move-object/from16 v16, v2

    .line 436
    .line 437
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 438
    .line 439
    if-ne v13, v2, :cond_13

    .line 440
    .line 441
    const-string v2, "Audio"

    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_13
    const-string v2, "Video"

    .line 445
    .line 446
    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v2, " cache complete key: "

    .line 450
    .line 451
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {v11, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_14
    move-object/from16 v16, v2

    .line 466
    .line 467
    :goto_8
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 468
    .line 469
    if-eqz v2, :cond_15

    .line 470
    .line 471
    invoke-virtual {v2, v12}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLoadProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 472
    .line 473
    .line 474
    :cond_15
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v2, v4, v12}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->putByRawKey(Ljava/lang/String;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->isCacheEnd()Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-nez v2, :cond_16

    .line 486
    .line 487
    if-eqz p2, :cond_17

    .line 488
    .line 489
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->isPreloadComplete()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-nez v2, :cond_16

    .line 494
    .line 495
    goto :goto_a

    .line 496
    :cond_16
    :goto_9
    move-object/from16 v0, v18

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_17
    :goto_a
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 500
    .line 501
    const/4 v2, 0x4

    .line 502
    if-ne v0, v2, :cond_1a

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :goto_b
    invoke-virtual {v0, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 506
    .line 507
    .line 508
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->removeLoadProgressByRawKey(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    if-nez p2, :cond_18

    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v2, "[preload] notify vid cache end key: "

    .line 523
    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-direct {v1, v9}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_cacheEndNotifyEngine(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 538
    .line 539
    .line 540
    :cond_18
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 541
    .line 542
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 543
    .line 544
    .line 545
    iput-wide v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mCacheSizeFromZero:J

    .line 546
    .line 547
    iput-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mMediaSize:J

    .line 548
    .line 549
    iput-object v14, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 550
    .line 551
    iput-object v15, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mLocalFilePath:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v2, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 554
    .line 555
    iput-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 556
    .line 557
    iget-object v2, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mDecryptionKey:Ljava/lang/String;

    .line 558
    .line 559
    iput-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mDecryptionKey:Ljava/lang/String;

    .line 560
    .line 561
    iget-object v2, v10, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 562
    .line 563
    iput-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mUsingVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 564
    .line 565
    iget-object v2, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 566
    .line 567
    iput-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mVideoId:Ljava/lang/String;

    .line 568
    .line 569
    iget v2, v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 570
    .line 571
    iput v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mTaskType:I

    .line 572
    .line 573
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    if-eqz v2, :cond_19

    .line 578
    .line 579
    if-eqz p2, :cond_19

    .line 580
    .line 581
    new-instance v2, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 582
    .line 583
    const/4 v3, 0x2

    .line 584
    invoke-direct {v2, v3}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 585
    .line 586
    .line 587
    iput-object v0, v2, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadDataInfo:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 588
    .line 589
    iput-object v12, v2, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->loadProgress:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 590
    .line 591
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    invoke-interface {v3, v2}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 596
    .line 597
    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    const-string v3, "[preload] notify end cache size = "

    .line 604
    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->getTotalCacheSize()J

    .line 609
    .line 610
    .line 611
    move-result-wide v5

    .line 612
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-static {v11, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :cond_19
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 623
    .line 624
    if-eqz v2, :cond_1a

    .line 625
    .line 626
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .line 633
    .line 634
    move-object/from16 v2, v16

    .line 635
    .line 636
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v2, ", rawKey = "

    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 655
    .line 656
    .line 657
    goto :goto_d

    .line 658
    :goto_c
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 659
    .line 660
    .line 661
    :cond_1a
    :goto_d
    return-void
.end method

.method private _removeRepeatUrls([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v2, p1, v2

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move v2, v1

    .line 20
    :goto_0
    array-length v3, p1

    .line 21
    if-ge v2, v3, :cond_4

    .line 22
    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sub-int/2addr v5, v1

    .line 32
    :goto_1
    if-ltz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    new-array p1, p1, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_3
    return-object p1
.end method

.method private _startExecuteTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DataLoaderHelper"

    .line 6
    .line 7
    const-string v1, "[preload] need load mdl first."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->backItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popBackItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isFetchSmartUrl()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startFetchSmartUrlInfo(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_startFetchVideoInfo(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_exectTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void
.end method

.method private _startFetchSmartUrlInfo(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->fetchSmartUrlInfo(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private _startFetchVideoInfo(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->removeVidPlaceholderTrack()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_apiStringForVid(Lcom/ss/ttvideoengine/PreloaderVidItem;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p1, "DataLoaderHelper"

    .line 17
    .line 18
    const-string v0, "apiString is null"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->BuildHttpsApi(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mApiString:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getAuthorization()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->BuildHttpsApi(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-class v2, Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mModelCache:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 44
    .line 45
    iget-object v4, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v4, v0}, Lcom/ss/ttvideoengine/VideoModelCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v2, 0x4

    .line 53
    const/4 v4, 0x1

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-boolean v5, v3, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z

    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    iget-object v0, v3, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 61
    .line 62
    iput-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 63
    .line 64
    const-string v0, "DataLoaderHelper"

    .line 65
    .line 66
    const-string v1, "[preload] get videoModel , videoId = %s"

    .line 67
    .line 68
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 69
    .line 70
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableVideoModelHitCacheCallback:I

    .line 82
    .line 83
    if-ne v0, v4, :cond_2

    .line 84
    .line 85
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 96
    .line 97
    invoke-direct {v0, v2}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 101
    .line 102
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fetchVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 118
    .line 119
    iput-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 120
    .line 121
    :cond_1
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFetchEndListener()Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFetchEndListener()Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 138
    .line 139
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 140
    .line 141
    iget-object v2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 142
    .line 143
    invoke-interface {v0, v1, v2}, Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;->fetchEnd(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 149
    .line 150
    iput-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 151
    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_exectTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 157
    .line 158
    if-eqz v3, :cond_6

    .line 159
    .line 160
    new-instance v5, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 161
    .line 162
    iget-object v6, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getNetClient()Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v5, v6, v3}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 169
    .line 170
    .line 171
    iput-object v5, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->setFetchListener()V

    .line 174
    .line 175
    .line 176
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 177
    .line 178
    iget-object v5, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 179
    .line 180
    iget-object v5, v5, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolutionMap:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {v3, v5}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setResolutionMap(Ljava/util/HashMap;)V

    .line 183
    .line 184
    .line 185
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 186
    .line 187
    iget-object v5, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 188
    .line 189
    iget-object v5, v5, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v3, v5}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setVideoID(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseVideoModelCache(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 202
    .line 203
    iget p1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 204
    .line 205
    const/4 v4, 0x2

    .line 206
    if-eq p1, v4, :cond_4

    .line 207
    .line 208
    if-ne p1, v2, :cond_5

    .line 209
    .line 210
    :cond_4
    const/4 v1, 0x0

    .line 211
    :cond_5
    invoke-virtual {v3, v0, v1, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    :cond_6
    :goto_0
    return-void

    .line 215
    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    throw p1
.end method

.method private _startMDLPreloadTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V
    .locals 38

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    const-string v12, "DataLoaderHelper"

    .line 8
    .line 9
    if-eqz v14, :cond_0

    .line 10
    .line 11
    if-nez v13, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v4, v12

    .line 14
    move-object v1, v15

    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "[preload] start mdl preload task.  key = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v12, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v11, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCustomHeader:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v10, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 44
    .line 45
    const-string v9, " preload size = "

    .line 46
    .line 47
    const-string v8, " header size = "

    .line 48
    .line 49
    const-string v7, "[preload] preload offset "

    .line 50
    .line 51
    const-wide/32 v16, 0x19000

    .line 52
    .line 53
    .line 54
    const-string v6, "&timestamp="

    .line 55
    .line 56
    const-string v5, "&header_size="

    .line 57
    .line 58
    const v4, -0x186a1

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object v11, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 72
    .line 73
    iget v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 74
    .line 75
    const/16 v18, 0x1

    .line 76
    .line 77
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    .line 78
    .line 79
    move-object/from16 v19, v0

    .line 80
    .line 81
    move-object/from16 v0, p0

    .line 82
    .line 83
    move/from16 v20, v1

    .line 84
    .line 85
    move-object v1, v10

    .line 86
    move-object v2, v11

    .line 87
    move/from16 v3, v20

    .line 88
    .line 89
    move v11, v4

    .line 90
    move/from16 v4, v18

    .line 91
    .line 92
    move-object v11, v5

    .line 93
    move-object/from16 v5, v19

    .line 94
    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQueryProvideMode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuffer;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    iget-wide v2, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getStartTimestamp()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    iget-object v0, v15, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 140
    .line 141
    invoke-virtual {v0, v10}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 142
    .line 143
    .line 144
    iget-object v0, v15, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 145
    .line 146
    invoke-virtual {v0, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 147
    .line 148
    .line 149
    iget-wide v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 150
    .line 151
    const-wide/16 v3, 0x0

    .line 152
    .line 153
    cmp-long v2, v0, v3

    .line 154
    .line 155
    if-lez v2, :cond_2

    .line 156
    .line 157
    iget-wide v5, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 158
    .line 159
    add-long v5, v5, v16

    .line 160
    .line 161
    cmp-long v2, v0, v5

    .line 162
    .line 163
    if-gez v2, :cond_2

    .line 164
    .line 165
    iget-wide v5, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 166
    .line 167
    add-long/2addr v5, v0

    .line 168
    iput-wide v5, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 169
    .line 170
    iput-wide v3, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 171
    .line 172
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-wide v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-wide v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 189
    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-wide v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v12, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-wide v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 209
    .line 210
    cmp-long v0, v0, v3

    .line 211
    .line 212
    if-lez v0, :cond_4

    .line 213
    .line 214
    iget-wide v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 215
    .line 216
    cmp-long v2, v0, v3

    .line 217
    .line 218
    if-lez v2, :cond_3

    .line 219
    .line 220
    iget-object v2, v15, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 221
    .line 222
    iget-object v3, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 223
    .line 224
    long-to-int v0, v0

    .line 225
    invoke-virtual {v2, v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    :cond_3
    iget-object v0, v15, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 229
    .line 230
    iget-object v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 231
    .line 232
    iget-wide v2, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 233
    .line 234
    long-to-int v2, v2

    .line 235
    iget-wide v3, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 236
    .line 237
    long-to-int v3, v3

    .line 238
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;II)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_4
    iget-object v0, v15, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 243
    .line 244
    iget-object v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 245
    .line 246
    iget-wide v2, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 247
    .line 248
    long-to-int v2, v2

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_5
    const v0, -0x186a1

    .line 254
    .line 255
    .line 256
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 257
    .line 258
    .line 259
    :goto_0
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v1, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 262
    .line 263
    filled-new-array {v10, v0, v1}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v1, "[preload] exect preload task by provider mode, key is %s; videoId = %s proxyurl:%s"

    .line 268
    .line 269
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v12, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    move-object v1, v15

    .line 277
    goto/16 :goto_6

    .line 278
    .line 279
    :cond_6
    move-object/from16 v18, v11

    .line 280
    .line 281
    move-object v11, v5

    .line 282
    move v5, v4

    .line 283
    move-wide v3, v2

    .line 284
    iget-object v2, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    .line 285
    .line 286
    if-eqz v2, :cond_15

    .line 287
    .line 288
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 289
    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    if-eqz v0, :cond_7

    .line 293
    .line 294
    sget-object v1, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 295
    .line 296
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    goto :goto_1

    .line 301
    :cond_7
    move/from16 v0, v19

    .line 302
    .line 303
    :goto_1
    array-length v1, v2

    .line 304
    if-lez v1, :cond_8

    .line 305
    .line 306
    aget-object v1, v2, v19

    .line 307
    .line 308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-nez v1, :cond_8

    .line 313
    .line 314
    aget-object v1, v2, v19

    .line 315
    .line 316
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_8

    .line 321
    .line 322
    const/4 v0, 0x1

    .line 323
    :cond_8
    move/from16 v20, v0

    .line 324
    .line 325
    invoke-static/range {p1 .. p2}, Lcom/ss/ttvideoengine/utils/MDLExtraInfoHelper;->addPCDNFlag(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    .line 326
    .line 327
    .line 328
    invoke-static/range {p1 .. p2}, Lcom/ss/ttvideoengine/utils/MDLExtraInfoHelper;->addTags(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 332
    .line 333
    iget-wide v3, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 334
    .line 335
    iget-object v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v5, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 338
    .line 339
    move-object/from16 v23, v5

    .line 340
    .line 341
    iget v5, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 342
    .line 343
    iget-object v13, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    .line 344
    .line 345
    move-object/from16 v24, v13

    .line 346
    .line 347
    iget v13, v14, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPlayIndexGap:I

    .line 348
    .line 349
    const-wide/16 v25, 0x0

    .line 350
    .line 351
    const/16 v27, 0x0

    .line 352
    .line 353
    move-object/from16 v28, v0

    .line 354
    .line 355
    move-object/from16 v0, p0

    .line 356
    .line 357
    move-object/from16 v29, v1

    .line 358
    .line 359
    move-object v1, v10

    .line 360
    move-object/from16 v30, v2

    .line 361
    .line 362
    move-object/from16 v2, v29

    .line 363
    .line 364
    move/from16 v22, v5

    .line 365
    .line 366
    move-object/from16 v31, v6

    .line 367
    .line 368
    move-object/from16 v21, v23

    .line 369
    .line 370
    move-wide/from16 v5, v25

    .line 371
    .line 372
    move-object/from16 v32, v7

    .line 373
    .line 374
    move-object/from16 v7, v30

    .line 375
    .line 376
    move-object/from16 v33, v8

    .line 377
    .line 378
    move-object/from16 v8, v28

    .line 379
    .line 380
    move-object/from16 v34, v9

    .line 381
    .line 382
    move-object/from16 v9, v21

    .line 383
    .line 384
    move-object/from16 v35, v10

    .line 385
    .line 386
    move/from16 v10, v22

    .line 387
    .line 388
    move-object/from16 v36, v11

    .line 389
    .line 390
    move-object/from16 v11, v18

    .line 391
    .line 392
    move-object/from16 v37, v12

    .line 393
    .line 394
    move/from16 v12, v20

    .line 395
    .line 396
    move/from16 v21, v13

    .line 397
    .line 398
    move-object/from16 v18, v24

    .line 399
    .line 400
    move-object/from16 v13, v27

    .line 401
    .line 402
    move-object/from16 v14, v18

    .line 403
    .line 404
    move/from16 v15, v21

    .line 405
    .line 406
    invoke-direct/range {v0 .. v15}, Lcom/ss/ttvideoengine/DataLoaderHelper;->preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuffer;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    .line 417
    .line 418
    move-object/from16 v0, v36

    .line 419
    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    .line 422
    .line 423
    move-object/from16 v0, p2

    .line 424
    .line 425
    iget-wide v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 426
    .line 427
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 428
    .line 429
    .line 430
    move-object/from16 v2, p1

    .line 431
    .line 432
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 433
    .line 434
    if-eqz v3, :cond_9

    .line 435
    .line 436
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getStartTimestamp()J

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    :goto_2
    const-wide/16 v5, 0x0

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :cond_9
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 444
    .line 445
    if-eqz v3, :cond_a

    .line 446
    .line 447
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getStartTimestamp()J

    .line 448
    .line 449
    .line 450
    move-result-wide v3

    .line 451
    goto :goto_2

    .line 452
    :cond_a
    const-wide/16 v3, 0x0

    .line 453
    .line 454
    goto :goto_2

    .line 455
    :goto_3
    cmp-long v7, v3, v5

    .line 456
    .line 457
    if-lez v7, :cond_b

    .line 458
    .line 459
    move-object/from16 v7, v31

    .line 460
    .line 461
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 465
    .line 466
    .line 467
    :cond_b
    if-eqz v20, :cond_e

    .line 468
    .line 469
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;

    .line 470
    .line 471
    invoke-direct {v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;-><init>()V

    .line 472
    .line 473
    .line 474
    iget-object v4, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 475
    .line 476
    if-eqz v4, :cond_c

    .line 477
    .line 478
    iget-object v4, v4, Lcom/ss/ttvideoengine/model/VideoInfo;->mURLExpires:[Ljava/lang/String;

    .line 479
    .line 480
    iput-object v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_c
    iget-object v4, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 484
    .line 485
    if-eqz v4, :cond_d

    .line 486
    .line 487
    iput-object v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    .line 488
    .line 489
    :cond_d
    :goto_4
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->buildQuery()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-nez v4, :cond_e

    .line 498
    .line 499
    const-string v4, "&hlsproxyQuery="

    .line 500
    .line 501
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    .line 506
    .line 507
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    iput-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 512
    .line 513
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-nez v1, :cond_14

    .line 518
    .line 519
    move-object/from16 v1, p0

    .line 520
    .line 521
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 522
    .line 523
    move-object/from16 v4, v35

    .line 524
    .line 525
    invoke-virtual {v3, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 526
    .line 527
    .line 528
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 529
    .line 530
    invoke-virtual {v3, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 531
    .line 532
    .line 533
    iget-wide v3, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 534
    .line 535
    cmp-long v7, v3, v5

    .line 536
    .line 537
    if-lez v7, :cond_f

    .line 538
    .line 539
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 540
    .line 541
    add-long v7, v7, v16

    .line 542
    .line 543
    cmp-long v7, v3, v7

    .line 544
    .line 545
    if-gez v7, :cond_f

    .line 546
    .line 547
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 548
    .line 549
    add-long/2addr v7, v3

    .line 550
    iput-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 551
    .line 552
    iput-wide v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 553
    .line 554
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    move-object/from16 v4, v32

    .line 560
    .line 561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 565
    .line 566
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    move-object/from16 v4, v33

    .line 570
    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 575
    .line 576
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    move-object/from16 v4, v34

    .line 580
    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 585
    .line 586
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    move-object/from16 v4, v37

    .line 594
    .line 595
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    if-eqz v20, :cond_10

    .line 599
    .line 600
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 601
    .line 602
    iget-object v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 603
    .line 604
    iget-wide v8, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 605
    .line 606
    long-to-int v8, v8

    .line 607
    invoke-virtual {v3, v7, v8}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->preloadHLSSource(Ljava/lang/String;I)Z

    .line 608
    .line 609
    .line 610
    move-result v19

    .line 611
    :cond_10
    if-nez v19, :cond_13

    .line 612
    .line 613
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 614
    .line 615
    cmp-long v3, v7, v5

    .line 616
    .line 617
    if-lez v3, :cond_12

    .line 618
    .line 619
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 620
    .line 621
    cmp-long v3, v7, v5

    .line 622
    .line 623
    if-lez v3, :cond_11

    .line 624
    .line 625
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 626
    .line 627
    iget-object v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 628
    .line 629
    long-to-int v6, v7

    .line 630
    invoke-virtual {v3, v5, v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;I)V

    .line 631
    .line 632
    .line 633
    :cond_11
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 634
    .line 635
    iget-object v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 636
    .line 637
    iget-wide v6, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 638
    .line 639
    long-to-int v6, v6

    .line 640
    iget-wide v7, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 641
    .line 642
    long-to-int v7, v7

    .line 643
    invoke-virtual {v3, v5, v6, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;II)V

    .line 644
    .line 645
    .line 646
    goto :goto_5

    .line 647
    :cond_12
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 648
    .line 649
    iget-object v5, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 650
    .line 651
    iget-wide v6, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 652
    .line 653
    long-to-int v6, v6

    .line 654
    invoke-virtual {v3, v5, v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;I)V

    .line 655
    .line 656
    .line 657
    :cond_13
    :goto_5
    iget-object v0, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 658
    .line 659
    iget-object v2, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 660
    .line 661
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    const-string v2, "[preload] exect preload task ,key is %s; videoId = %s"

    .line 666
    .line 667
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    goto :goto_6

    .line 675
    :cond_14
    move-object/from16 v1, p0

    .line 676
    .line 677
    const v0, -0x186a1

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 681
    .line 682
    .line 683
    goto :goto_6

    .line 684
    :cond_15
    move v0, v5

    .line 685
    move-object v2, v14

    .line 686
    move-object v1, v15

    .line 687
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->_notifyError(I)V

    .line 688
    .line 689
    .line 690
    :goto_6
    return-void

    .line 691
    :goto_7
    const-string v0, "[preload] start mdl preload task fail. track is null"

    .line 692
    .line 693
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    return-void
.end method

.method private _supportProxy(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "mdl://"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLocalAddr()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "http://"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    const-string v2, "http://127.0.0.1"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_9

    .line 69
    .line 70
    const-string v2, "http://localhost"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const-string v2, "file://"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_9

    .line 86
    .line 87
    const-string v2, "/"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isMpd(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    return v1

    .line 103
    :cond_6
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHls:I

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-ne v0, v2, :cond_7

    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mSupportHls:Z

    .line 109
    .line 110
    if-nez v0, :cond_8

    .line 111
    .line 112
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 113
    .line 114
    if-ne v0, v2, :cond_7

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHLSProxyValid:Z

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    return v1

    .line 128
    :cond_8
    :goto_1
    return v2

    .line 129
    :cond_9
    :goto_2
    return v1
.end method

.method private _tryToSetDefaultCacheDir()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "mdlcache"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 60
    .line 61
    iput-object v0, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 62
    .line 63
    return-void
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removeAllMedias(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_addPriorityTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removePriorityTask(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/LibraryLoaderProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/DataLoaderHelper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCurrentAccessType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_exectTask(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_addMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private asyncCopyOperation(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 18
    .line 19
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->asyncCopyOperation(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 29
    .line 30
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    return-void

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 44
    .line 45
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method private changeConfigWithPermission(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 2

    .line 1
    const-string v0, "http_dns"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    .line 11
    .line 12
    :cond_0
    const-string v0, "native_mdl"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getNativeMdlEnable()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 28
    .line 29
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mdlStart(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private dumpLibMd5()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableDumpLibMd5:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "/lib"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-nez v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "libavmdl.so"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "libavmdl md5: "

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "DataLoaderHelper"

    .line 93
    .line 94
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public static final encodeUrlByQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "before encode:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTHelperEncode"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->queryComponentEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v0, "call native encode fail,try java"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "UTF-8"

    .line 46
    .line 47
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "after encode:"

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0
.end method

.method public static getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper$Holder;->access$200()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private initInternal()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/ttm/vcshared/VCBaseKitLoader;->loadLibrary()Z

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLibManager:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_1
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$1;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManagerWrapper;->setLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManagerWrapper;->setEnableV2(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initWithLibraryManager()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v0, v2

    .line 47
    :goto_0
    if-nez v0, :cond_d

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->loadLibrary()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const-string v4, "DataLoaderHelper"

    .line 54
    .line 55
    if-nez v3, :cond_5

    .line 56
    .line 57
    const-string v0, "proxy load library failed"

    .line 58
    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "library load fail"

    .line 62
    .line 63
    new-array v1, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_5
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 74
    .line 75
    if-nez v3, :cond_6

    .line 76
    .line 77
    iget v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLoadMdlv2Fulllib:I

    .line 78
    .line 79
    if-ne v3, v1, :cond_6

    .line 80
    .line 81
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    iget-boolean v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedMDLLoadMDLV2Lib:Z

    .line 86
    .line 87
    if-nez v3, :cond_6

    .line 88
    .line 89
    const-string/jumbo v0, "try to load mdls"

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->loadAVMDLBaseLibrary()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 99
    .line 100
    const-string v3, "avmdls"

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->loadLibrary(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "load avmdls: "

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 127
    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    iget-object v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 131
    .line 132
    iget v5, v5, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoader:I

    .line 133
    .line 134
    if-ne v5, v1, :cond_7

    .line 135
    .line 136
    const-string v5, "mdlttquicheloader"

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->loadLibrary(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v6, "load ttquiche: "

    .line 148
    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    if-nez v0, :cond_d

    .line 163
    .line 164
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    move v0, v1

    .line 169
    goto :goto_1

    .line 170
    :cond_8
    move v0, v2

    .line 171
    :goto_1
    iget v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    move v3, v1

    .line 176
    goto :goto_2

    .line 177
    :cond_9
    move v3, v2

    .line 178
    :goto_2
    iget v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 179
    .line 180
    if-ne v5, v1, :cond_a

    .line 181
    .line 182
    iget-boolean v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedMDLLoadMDLV2Lib:Z

    .line 183
    .line 184
    if-eqz v5, :cond_a

    .line 185
    .line 186
    move v5, v1

    .line 187
    goto :goto_3

    .line 188
    :cond_a
    move v5, v2

    .line 189
    :goto_3
    invoke-static {v0, v3, v5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->init(ZZZ)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    const-string v0, "library has not been loaded"

    .line 196
    .line 197
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 198
    .line 199
    new-array v1, v2, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v2

    .line 209
    :cond_b
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 210
    .line 211
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 218
    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 224
    .line 225
    iget v4, v4, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    .line 226
    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v3, "loadertype:%d NeedDLLoadP2PLib:%d, liveloaderType: %d"

    .line 236
    .line 237
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v3, "P2PLIB"

    .line 242
    .line 243
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 247
    .line 248
    if-nez v0, :cond_d

    .line 249
    .line 250
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 255
    .line 256
    iget v4, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePcdnAuto:I

    .line 257
    .line 258
    if-eq v4, v1, :cond_c

    .line 259
    .line 260
    iget v4, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 261
    .line 262
    if-gtz v4, :cond_c

    .line 263
    .line 264
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    .line 265
    .line 266
    const/16 v4, 0x2710

    .line 267
    .line 268
    if-eq v0, v4, :cond_d

    .line 269
    .line 270
    const/4 v4, 0x7

    .line 271
    if-lt v0, v4, :cond_d

    .line 272
    .line 273
    :cond_c
    const-string v0, "delay to load p2p lib"

    .line 274
    .line 275
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    move v0, v1

    .line 279
    goto :goto_4

    .line 280
    :cond_d
    move v0, v2

    .line 281
    :goto_4
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 282
    .line 283
    iget v3, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableByteMediaNetLoader:I

    .line 284
    .line 285
    if-lez v3, :cond_e

    .line 286
    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v4, "enable byte media try init env, context:"

    .line 293
    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v4, "  classloader:"

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mClasssLoader:Ljava/lang/ClassLoader;

    .line 308
    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    const-string v4, "ByteMediaNet"

    .line 317
    .line 318
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    if-eqz v3, :cond_e

    .line 324
    .line 325
    iget-object v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mClasssLoader:Ljava/lang/ClassLoader;

    .line 326
    .line 327
    if-eqz v5, :cond_e

    .line 328
    .line 329
    invoke-static {v3, v5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initByteMediaNetEnv(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 330
    .line 331
    .line 332
    const-string v3, "init byte media env end"

    .line 333
    .line 334
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    iput-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 342
    .line 343
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setConfigure(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 346
    .line 347
    .line 348
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 349
    .line 350
    invoke-virtual {v3, p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setListener(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 354
    .line 355
    invoke-virtual {v3, p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setStartCompleteListener(Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;)V

    .line 356
    .line 357
    .line 358
    if-eqz v0, :cond_f

    .line 359
    .line 360
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 361
    .line 362
    if-eqz v0, :cond_f

    .line 363
    .line 364
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 365
    .line 366
    new-instance v3, Lcom/ss/ttvideoengine/DataLoaderHelper$2;

    .line 367
    .line 368
    invoke-direct {v3, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$2;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setPluginLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :catch_0
    move-exception v0

    .line 376
    goto :goto_8

    .line 377
    :cond_f
    :goto_5
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 378
    .line 379
    if-ne v0, v1, :cond_10

    .line 380
    .line 381
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isHlsProxyEnable()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_10

    .line 386
    .line 387
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_10
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 391
    .line 392
    :goto_6
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 393
    .line 394
    if-ne v0, v1, :cond_13

    .line 395
    .line 396
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 397
    .line 398
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->initHLSCacheModule()V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 402
    .line 403
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 404
    .line 405
    iget-object v3, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setHLSCacheDir(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 411
    .line 412
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 413
    .line 414
    iget-object v3, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownloadDir:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setHLSDownloadDir(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadFirstTs:I

    .line 420
    .line 421
    if-ne v0, v1, :cond_11

    .line 422
    .line 423
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 424
    .line 425
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setEnablePreloadFirstTs(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_11
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadAllTs:I

    .line 430
    .line 431
    if-ne v0, v1, :cond_12

    .line 432
    .line 433
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 434
    .line 435
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setEnablePreloadAllTs(I)V

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_12
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 440
    .line 441
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setEnablePreloadFirstTs(I)V

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setEnablePreloadAllTs(I)V

    .line 447
    .line 448
    .line 449
    :cond_13
    :goto_7
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    invoke-direct {v0, p0, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V

    .line 453
    .line 454
    .line 455
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeat:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

    .line 456
    .line 457
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 458
    .line 459
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEnginePortrait:I

    .line 460
    .line 461
    if-lez v0, :cond_14

    .line 462
    .line 463
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getAllLabels()Ljava/util/Map;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-virtual {v3, p0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->addPortraitListener(Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;)V

    .line 476
    .line 477
    .line 478
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 479
    .line 480
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_constructEnginePortaint(Ljava/util/Map;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    iput-object v0, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnginePortraitStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .line 486
    :cond_14
    return v1

    .line 487
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    const-string v3, "mInnerDataloader create error:"

    .line 493
    .line 494
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 509
    .line 510
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    return v2
.end method

.method private isMDLPrecisePreloadEnable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "enable"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return v1
.end method

.method private loadLibrary()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->dumpLibMd5()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 23
    .line 24
    const-string v1, "avmdlbase"

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 30
    .line 31
    const-string v1, "avmdlv2"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 42
    .line 43
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "try to load avmdl: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "DataLoaderHelper"

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 73
    .line 74
    const-string v1, "avmdl"

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 81
    .line 82
    :cond_2
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->isProxyLibraryLoaded:Z

    .line 83
    .line 84
    return v0
.end method

.method private preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;IJLjava/lang/String;II)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p10

    move/from16 v3, p14

    move-wide/from16 v4, p15

    move/from16 v6, p18

    move/from16 v7, p19

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    array-length v8, v1

    const/4 v10, 0x1

    if-ge v8, v10, :cond_1

    :cond_0
    move-object v1, v9

    goto/16 :goto_5

    .line 3
    :cond_1
    invoke-virtual/range {p7 .. p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-wide/16 v11, 0x0

    cmp-long v8, p5, v11

    if-lez v8, :cond_2

    move-wide/from16 v13, p5

    goto :goto_0

    :cond_2
    move-wide v13, v11

    :goto_0
    const/4 v15, 0x0

    .line 4
    :goto_1
    array-length v10, v1

    if-ge v15, v10, :cond_4

    .line 5
    aget-object v10, v1, v15

    invoke-direct {v0, v10}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_supportProxy(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    return-object v9

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6
    :cond_4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_removeRepeatUrls([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    return-object v9

    .line 9
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preloadProxyQuery: key = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", rawKey = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v11, "DataLoaderHelper"

    invoke-static {v11, v15}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v8, v9

    :cond_6
    invoke-static {v8}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 12
    const-string/jumbo v8, "videoId"

    .line 13
    :cond_7
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    const-string v11, "?rk="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    const-string v8, "&k="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v10, 0x0

    cmp-long v8, v13, v10

    if-lez v8, :cond_8

    .line 18
    const-string v8, "&s="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-long v10, p3, v13

    .line 19
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_8
    if-lez v2, :cond_9

    .line 20
    const-string v8, "&l="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 22
    :cond_9
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 23
    invoke-static/range {p8 .. p8}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 25
    const-string v8, "&p="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_a
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 28
    invoke-static/range {p11 .. p11}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 30
    const-string v8, "&h="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    :cond_b
    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 33
    const-string v2, "&gid="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, p17

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const/4 v2, 0x0

    if-nez p12, :cond_d

    .line 34
    aget-object v8, v1, v2

    invoke-static {v8}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 35
    :cond_d
    const-string v8, "&ft=1"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    if-lez v3, :cond_f

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&ev="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_10

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&ue="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_10
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 39
    invoke-static/range {p13 .. p13}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 41
    const-string v4, "&dtk="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    if-lez v6, :cond_12

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&play_index_gap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    if-lez v7, :cond_13

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&retry_err_cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :cond_13
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v8, v2

    .line 46
    :goto_2
    array-length v2, v1

    const/16 v4, 0xc18

    if-ge v8, v2, :cond_17

    .line 47
    iget-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseOriginalUrl:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14

    .line 48
    :try_start_0
    aget-object v2, v1, v8

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 49
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode failed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TTHelperEncode"

    invoke-static {v5, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_3

    .line 50
    :cond_14
    aget-object v2, v1, v8

    invoke-static {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->encodeUrlByQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    :goto_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 53
    const-string v6, "&u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_15
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x20

    if-le v2, v4, :cond_16

    goto :goto_4

    .line 58
    :cond_16
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 59
    :cond_17
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_18

    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_18
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 61
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 62
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x21

    if-gt v1, v4, :cond_19

    .line 63
    const-string v1, "&"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, p9

    .line 64
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_19
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1
.end method

.method private preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    const-wide/16 v15, 0x0

    const/16 v19, -0x1

    const/4 v14, 0x0

    .line 1
    invoke-direct/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;IJLjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v19, p12

    .line 1
    const-string v17, ""

    const/16 v18, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;IJLjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-wide/from16 v15, p13

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2
    const-string v17, ""

    invoke-direct/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->preloadProxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;IJLjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private proxyQueryProvideMode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object p2, p1

    .line 29
    :cond_2
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move-object p1, p2

    .line 41
    :goto_0
    new-instance p2, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v0, "?rk="

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    const-string p1, "&k="

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    const-string p1, "&pv="

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    const-string p1, "&gid="

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    :cond_4
    if-lez p3, :cond_5

    .line 86
    .line 87
    const-string p1, "&l="

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_6
    :goto_1
    return-object v1
.end method

.method private reportSpeed(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableReportSpeed:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 7
    .line 8
    return-void
.end method

.method private startVCTrace()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public _addEngine(Lcom/ss/ttvideoengine/TTVideoEngine;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    new-instance v1, Lcom/ss/ttvideoengine/utils/ValueWeakReference;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/ss/ttvideoengine/utils/ValueWeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const-string p1, "DataLoaderHelper"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "add engine ref,rawKey = "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, " engine ref count: "

    .line 68
    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    :goto_2
    return-void
.end method

.method public _getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const-string v1, "mdl://"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    const-string v1, "?"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v1, v3, :cond_2

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_2
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLocalAddr()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "http://"

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "_proxyUrl: "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    move-object p1, v1

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "get proxy url failed: "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-object p1
.end method

.method _headerString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ":"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, " "

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, "\r\n"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 70
    return-object p1
.end method

.method public _proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1
    invoke-virtual/range {v0 .. v21}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public _proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p5

    .line 2
    const-string v13, "&ah="

    iget v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    const/16 v16, 0x0

    if-eqz v2, :cond_0

    .line 3
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->StateError:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    return-object v16

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v1, :cond_19

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto/16 :goto_c

    .line 5
    :cond_1
    invoke-virtual/range {p5 .. p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v1, v17

    .line 6
    :goto_0
    array-length v2, v12

    const-string v11, "DataLoaderHelper"

    if-ge v1, v2, :cond_3

    .line 7
    aget-object v2, v12, v1

    invoke-direct {v14, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_supportProxy(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->ProxyNotSupport:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    .line 9
    const-string v0, "not support"

    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    aget-object v0, v12, v1

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    if-nez v1, :cond_4

    .line 12
    const-string/jumbo v0, "start mdl first"

    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->StateError:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    return-object v16

    .line 14
    :cond_4
    iget v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHls:I

    if-ne v1, v3, :cond_8

    if-nez p12, :cond_6

    .line 15
    aget-object v1, v12, v17

    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v1, v17

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v3

    :goto_2
    move/from16 v18, v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move/from16 v1, p11

    goto :goto_3

    :cond_8
    move/from16 v1, p11

    move/from16 v18, v17

    .line 16
    :goto_3
    sget-object v2, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->StateError:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    .line 17
    iget-object v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v4, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v2, v4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 18
    :try_start_0
    const-string v2, ""

    .line 19
    iget-boolean v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    if-eqz v4, :cond_a

    .line 20
    iget-object v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    invoke-virtual {v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isRunning()Z

    move-result v4

    if-nez v4, :cond_9

    .line 21
    const-string v0, "dataloader is not running"

    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-object v16

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_9
    move-object v10, v2

    goto :goto_4

    .line 23
    :cond_a
    :try_start_1
    iget-object v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    invoke-virtual {v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLocalAddr()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 25
    const-string v0, "local host error"

    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-object v16

    .line 27
    :goto_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proxy url, mInvalidMdlProcotol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 29
    iget-boolean v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    if-nez v4, :cond_b

    iget-boolean v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mForbidNativeMDLForOriUrl:Z

    if-eqz v4, :cond_b

    .line 30
    invoke-static {v12}, Lcom/ss/ttvideoengine/utils/TTHelper;->isTranscodeUrlList([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 31
    const-string/jumbo v2, "url not transcode, not use native mdl"

    invoke-static {v11, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v17

    :cond_b
    if-nez v1, :cond_d

    .line 32
    iget-boolean v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    if-nez v1, :cond_d

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v19, v17

    goto :goto_6

    :cond_d
    :goto_5
    move/from16 v19, v3

    .line 33
    :goto_6
    iget-boolean v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    if-eqz v1, :cond_e

    if-eqz v19, :cond_e

    .line 34
    const-string/jumbo v0, "use local server but local server closed"

    invoke-static {v11, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-object v16

    :cond_e
    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p3

    move-object v8, v12

    move-object/from16 v9, p9

    move-object/from16 v20, v10

    move-object/from16 v10, p10

    move-object/from16 v21, v11

    move/from16 v11, v18

    move-object/from16 v22, v12

    move-object/from16 v12, p13

    move-object/from16 v0, p8

    move-object v15, v13

    move/from16 v13, p17

    .line 36
    :try_start_3
    invoke-direct/range {v1 .. v13}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_f

    .line 38
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-object v16

    .line 39
    :cond_f
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    iget v3, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlDataSourceId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlDataSourceId:I

    if-eqz v18, :cond_10

    .line 41
    iget-object v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v4, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->convertHLSProxyUrl(Ljava/lang/StringBuffer;)Z

    move-result v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    :cond_10
    const-string v4, "/"

    if-eqz v19, :cond_11

    .line 43
    :try_start_5
    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v20

    .line 44
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 47
    :cond_11
    const-string v5, "mdl://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v4, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    invoke-virtual {v4, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 56
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    if-eqz v17, :cond_15

    .line 60
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;

    invoke-direct {v1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;-><init>()V

    if-eqz v0, :cond_14

    .line 61
    iget-object v3, v0, Lcom/ss/ttvideoengine/model/VideoInfo;->mURLExpires:[Ljava/lang/String;

    iput-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    move-object/from16 v3, p16

    :cond_13
    :goto_8
    move-object/from16 v4, p18

    goto :goto_9

    :cond_14
    move-object/from16 v3, p16

    if-eqz v3, :cond_13

    .line 62
    iput-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    goto :goto_8

    .line 63
    :goto_9
    iput-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->engineId:Ljava/lang/String;

    move/from16 v4, p19

    .line 64
    iput-boolean v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->enableInfoCallback:Z

    move-object/from16 v4, p20

    .line 65
    iput-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->privateFFmpegProto:Ljava/lang/String;

    move-object/from16 v4, p21

    .line 66
    iput-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->convertUrlOrder:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->buildQuery()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 69
    const-string v4, "&hlsproxyQuery="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_15
    move-object/from16 v3, p16

    .line 71
    :cond_16
    :goto_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_proxyUrl: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v21

    invoke-static {v4, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    iget-object v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v4, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v2, v4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 74
    iget-object v2, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    move-object v4, v3

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItemForVideoId(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    move-result-object v2

    if-nez v2, :cond_17

    .line 75
    new-instance v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    invoke-direct {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;-><init>()V

    :cond_17
    move-object v5, v0

    move-object/from16 v0, p1

    .line 76
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 77
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 78
    iput-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 79
    iput-object v1, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 80
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    move-object/from16 v0, p7

    .line 81
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mDecryptionKey:Ljava/lang/String;

    .line 82
    iput-object v5, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    move-object/from16 v0, v22

    .line 83
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    move-object/from16 v0, p9

    .line 84
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 85
    iput-object v0, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 86
    iput-object v4, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 87
    iget-object v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 88
    :cond_18
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->None:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    return-object v1

    .line 89
    :goto_b
    iget-object v1, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw v0

    .line 90
    :cond_19
    :goto_c
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->ParamsWrong:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v14, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    return-object v16
.end method

.method public _removeEngine(Lcom/ss/ttvideoengine/TTVideoEngine;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/ss/ttvideoengine/utils/ValueWeakReference;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/ss/ttvideoengine/utils/ValueWeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string p1, "DataLoaderHelper"

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "remove engine ref,rawKey = "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " engine ref count: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllUsingEngies:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 79
    .line 80
    iget-wide v0, p1, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 81
    .line 82
    const-wide/16 v2, 0x0

    .line 83
    .line 84
    cmp-long v0, v0, v2

    .line 85
    .line 86
    if-lez v0, :cond_1

    .line 87
    .line 88
    iget-wide v0, p1, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 89
    .line 90
    cmp-long v0, v0, v2

    .line 91
    .line 92
    if-lez v0, :cond_1

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->removePlayInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_2
    :goto_2
    return-void
.end method

.method public _removePlayTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPlayTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->addListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addPreloadMedias(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadMedia;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "preload"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    if-nez p2, :cond_2

    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadConfig;->share()Lcom/ss/ttvideoengine/preload/PreloadConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/preload/PreloadConfig;->getCurrentSceneId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "[preload] add preload  mediaList ,size = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "sceneId = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "DataLoaderHelper"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v0, v1, :cond_6

    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/ss/ttvideoengine/preload/PreloadMedia;

    .line 69
    .line 70
    iput-object p2, v1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mSceneId:Ljava/lang/String;

    .line 71
    .line 72
    instance-of v2, v1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    check-cast v1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadUrlMedia(Lcom/ss/ttvideoengine/preload/PreloadURLMedia;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    instance-of v2, v1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, 0x1

    .line 91
    sub-int/2addr v2, v3

    .line 92
    if-ne v0, v2, :cond_4

    .line 93
    .line 94
    move-object v2, v1

    .line 95
    check-cast v2, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 96
    .line 97
    iput-boolean v3, v2, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isLast:Z

    .line 98
    .line 99
    :cond_4
    check-cast v1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    return-void
.end method

.method public addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 6

    .line 1
    const-string v0, "preload"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, -0x186a1

    .line 11
    .line 12
    .line 13
    const-string v1, "kTTVideoErrorDomainDataLoaderPreload"

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const-string v3, "DataLoaderHelper"

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    iget-object v4, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 21
    .line 22
    if-eqz v4, :cond_4

    .line 23
    .line 24
    iget-object v5, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v5, 0x2

    .line 30
    invoke-interface {v4, v5}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    const-string v4, "[preload] videoId invalid."

    .line 41
    .line 42
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 52
    .line 53
    invoke-direct {v3, v2}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 57
    .line 58
    invoke-direct {v2, v1, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v3, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1, v3}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mSceneId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_ml_addMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    :goto_0
    const-string v4, "[preload] addTask videoModel input invalid"

    .line 78
    .line 79
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    new-instance v3, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 91
    .line 92
    invoke-direct {v3, v2}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 96
    .line 97
    invoke-direct {v2, v1, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v3, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1, v3}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void
.end method

.method public addPreloadUrlMedia(Lcom/ss/ttvideoengine/preload/PreloadURLMedia;)V
    .locals 0

    .line 1
    return-void
.end method

.method public addPriorityPreloadTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 19
    .line 20
    const/16 v1, 0x73

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_addPriorityTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    .locals 10

    if-nez p1, :cond_0

    .line 17
    const-string p1, "DataLoaderHelper"

    const-string v0, "[preload] url item invalid"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getVideoId()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getPreloadSize()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v9, p1

    .line 22
    invoke-direct/range {v2 .. v9}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/PreloaderVideoModelItem;Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1
.end method

.method public addTask(Lcom/ss/ttvideoengine/PreloaderVidItem;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    const-string p1, "DataLoaderHelper"

    const-string/jumbo v0, "videoId invalid."

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 15
    :try_start_0
    iget-object v4, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    iget-wide v5, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/PreloaderVideoModelItem;Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1
.end method

.method public addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 34
    const-string v2, "DataLoaderHelper"

    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    if-nez v3, :cond_0

    goto/16 :goto_c

    .line 35
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object v3

    .line 36
    iget v4, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-lez v4, :cond_13

    .line 37
    iget-object v4, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-interface {v4}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 39
    iget v8, v9, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCheckPreloadUrls:I

    const/4 v10, 0x0

    if-ne v8, v5, :cond_3

    iget-object v8, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    if-eqz v8, :cond_3

    .line 40
    invoke-interface {v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 41
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 42
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/ttvideoengine/model/VideoInfo;

    const/16 v12, 0x10

    .line 43
    invoke-virtual {v11, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    move-result-object v11

    .line 44
    array-length v12, v11

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 45
    invoke-direct {v9, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_supportProxy(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    return-void

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 46
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v8

    invoke-virtual {v8, v4, v7, v7, v10}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->addMedia(Ljava/lang/String;Lcom/bytedance/vcloud/strategy/ISelectBitrateListener;Ljava/lang/String;Z)V

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48
    new-instance v8, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    invoke-direct {v8, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;-><init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    if-eqz v3, :cond_4

    .line 49
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v7

    .line 50
    :goto_1
    iget v11, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    const-string v12, "error_desc"

    const-string v13, "error_code"

    if-ne v5, v11, :cond_5

    .line 51
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    move-result v11

    if-nez v11, :cond_5

    .line 52
    const-string v10, "[GearStrategy] addTask strategy center not running"

    invoke-static {v2, v10}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_13

    .line 53
    iget-object v10, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 54
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    move-result-object v11

    .line 55
    invoke-interface {v3, v10, v4, v6, v11}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onBeforeSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    .line 56
    const-string v10, "-3"

    invoke-interface {v4, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v10, "strategy center not running"

    invoke-interface {v4, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v10, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 59
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 60
    invoke-interface {v3, v10, v4, v6, v8}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onAfterSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 61
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object v11

    const-string v14, ""

    if-eqz v11, :cond_6

    .line 62
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getExtraConfig()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_6
    move-object v11, v14

    .line 63
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 64
    const-string v15, "extra_config"

    invoke-interface {v4, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_7
    iget-object v11, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-virtual {v8, v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 66
    iget v11, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    const-string v15, "audio"

    const-string/jumbo v10, "video"

    if-ne v6, v11, :cond_a

    if-nez v3, :cond_8

    .line 67
    const-string v3, "[GearStrategy] add task select method callback but listener is null"

    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_4

    .line 68
    :cond_8
    iget-object v11, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 69
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-interface {v3, v11, v4, v6, v1}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onBeforeSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-interface {v3, v1, v7, v6}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->selectBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 74
    const-string/jumbo v12, "video_bitrarte"

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 77
    const-string v12, "audio_bitrarte"

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 78
    :cond_9
    const-string v11, "-4"

    invoke-interface {v4, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v11, "select result null"

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_3
    const-string v11, "select_reason"

    const-string v12, "13"

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v11, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 82
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 83
    invoke-interface {v3, v11, v4, v6, v8}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->onAfterSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_4

    .line 84
    :cond_a
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v1

    iget-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-virtual {v1, v3, v6, v4, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_12

    .line 85
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_b

    .line 86
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 87
    :goto_5
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    .line 89
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GearStrategy] gear strategy addTask mGearStrategyEnabled="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " videoBitrate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " audioBitrate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-interface {v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object v1

    if-lez v3, :cond_11

    if-eqz v1, :cond_11

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    if-eqz v4, :cond_d

    .line 92
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    move-result v8

    sget v10, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    if-eq v8, v10, :cond_d

    .line 93
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v8

    if-nez v8, :cond_e

    goto :goto_7

    .line 94
    :cond_e
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableUseRealBitrate()I

    move-result v8

    const/4 v10, 0x3

    if-ne v5, v8, :cond_f

    const/16 v8, 0x2c

    .line 95
    invoke-virtual {v4, v8}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v8

    int-to-long v11, v8

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-gtz v8, :cond_10

    .line 96
    invoke-virtual {v4, v10}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v8

    :goto_8
    int-to-long v11, v8

    goto :goto_9

    .line 97
    :cond_f
    invoke-virtual {v4, v10}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v8

    goto :goto_8

    :cond_10
    :goto_9
    int-to-long v13, v3

    cmp-long v8, v11, v13

    if-nez v8, :cond_d

    goto :goto_a

    :cond_11
    move-object v4, v7

    .line 98
    :goto_a
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngineHelper;->paramsFromVideoInfo(Lcom/ss/ttvideoengine/model/IVideoInfo;)Ljava/util/Map;

    move-result-object v1

    if-eqz v4, :cond_13

    .line 99
    invoke-interface {v4}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v3

    iput-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 100
    iput-object v1, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    goto :goto_b

    .line 101
    :cond_12
    const-string v1, "[GearStrategy]add task result is null"

    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_13
    :goto_b
    iget-object v1, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    iget-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    iget-object v4, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 103
    invoke-interface {v1, v3, v4, v5}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    const/16 v3, 0xf

    .line 104
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 105
    :cond_14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 106
    const-string v1, "[preload] key invalid."

    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v1, -0x186a1

    .line 107
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->_notifyError(I)V

    return-void

    :cond_15
    const v1, -0x186a1

    .line 108
    iget-object v3, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    invoke-interface {v3, v6}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 110
    const-string v3, "[preload] videoId invalid."

    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->_notifyError(I)V

    return-void

    .line 112
    :cond_16
    iget-object v1, v9, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 113
    :try_start_0
    iget-wide v4, v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/PreloaderVideoModelItem;Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, v9, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw v0

    .line 115
    :cond_17
    :goto_c
    const-string v1, "[preload] addTask videoModel input invalid"

    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_18

    const v1, -0x186a1

    .line 116
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->_notifyError(I)V

    :cond_18
    return-void
.end method

.method public addTask(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V

    return-void
.end method

.method public addTask(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 31
    new-instance v6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;-><init>(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;JLcom/ss/ttvideoengine/PreloaderFilePathListener;)V

    .line 32
    iput-object p3, v6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 33
    invoke-virtual {p0, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V

    return-void
.end method

.method public addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V

    return-void
.end method

.method public addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/VideoModel;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 27
    new-instance v6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;-><init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JLcom/ss/ttvideoengine/PreloaderFilePathListener;)V

    .line 28
    iput-object p3, v6, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 29
    invoke-virtual {p0, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Lcom/ss/ttvideoengine/PreloaderVidItem;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "DataLoaderHelper"

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p2, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string v2, "addTask key is %s; videoId = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 7
    :try_start_0
    iget-object v4, p2, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    iget-wide v5, p2, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/PreloaderVideoModelItem;Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1

    .line 9
    :cond_2
    :goto_0
    const-string/jumbo p1, "videoId invalid."

    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V
    .locals 8

    if-nez p5, :cond_0

    .line 140
    const-string p1, "DataLoaderHelper"

    const-string p2, "provider invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    new-instance v7, Lcom/ss/ttvideoengine/PreloaderURLItem;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string p1, "DataLoaderHelper"

    const-string/jumbo p2, "url invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask([Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 6

    .line 24
    new-instance p1, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;-><init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JLcom/ss/ttvideoengine/PreloaderFilePathListener;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string p1, "DataLoaderHelper"

    const-string p2, "[preload] url invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    new-instance v6, Lcom/ss/ttvideoengine/PreloaderURLItem;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 7

    if-eqz p3, :cond_1

    .line 121
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/PreloaderURLItem;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    return-void

    .line 124
    :cond_1
    :goto_0
    const-string p1, "DataLoaderHelper"

    const-string/jumbo p2, "urls invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    if-eqz p3, :cond_1

    .line 125
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/PreloaderURLItem;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    return-void

    .line 128
    :cond_1
    :goto_0
    const-string p1, "DataLoaderHelper"

    const-string/jumbo p2, "urls invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTask([Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 132
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v7, Lcom/ss/ttvideoengine/PreloaderURLItem;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7, v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->setKey(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1

    .line 139
    :cond_1
    :goto_0
    const-string p1, "DataLoaderHelper"

    const-string/jumbo p2, "urls invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cacheFileInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 10
    .line 11
    .line 12
    iget-wide v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mMediaSize:J

    .line 15
    .line 16
    iget-wide v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 17
    .line 18
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mCacheSizeFromZero:J

    .line 19
    .line 20
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mLocalFilePath:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public cacheFileInfoByTimeOut(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheInfoByTimeOut(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 10
    .line 11
    .line 12
    iget-wide p3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 13
    .line 14
    iput-wide p3, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mMediaSize:J

    .line 15
    .line 16
    iget-wide p3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 17
    .line 18
    iput-wide p3, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mCacheSizeFromZero:J

    .line 19
    .line 20
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheFileInfo;->mLocalFilePath:Ljava/lang/String;

    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public cancelAllTasks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableStrategyCenterCancelAll:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v2, 0x79e5

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 39
    .line 40
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelAllTasksInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 49
    .line 50
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    return-void

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 64
    .line 65
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_2
    const-string v0, "DataLoaderHelper"

    .line 72
    .line 73
    const-string v1, "need start mdl first"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public cancelAllTasksInternal()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    const/16 v2, 0x2710

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-lez v1, :cond_4

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popBackItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget v6, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 30
    .line 31
    if-lt v6, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v6, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->cancel()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v1, v5

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ge v1, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 62
    .line 63
    invoke-virtual {v7, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    cmp-long v1, v6, v3

    .line 79
    .line 80
    if-lez v1, :cond_9

    .line 81
    .line 82
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popBackItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget v6, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 91
    .line 92
    if-lt v6, v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object v6, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 99
    .line 100
    if-eqz v6, :cond_6

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->cancel()V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    move v1, v5

    .line 110
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-ge v1, v6, :cond_8

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 121
    .line 122
    iget-object v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 123
    .line 124
    invoke-virtual {v7, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    .line 132
    .line 133
    :cond_9
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    cmp-long v1, v6, v3

    .line 140
    .line 141
    if-lez v1, :cond_e

    .line 142
    .line 143
    move v1, v5

    .line 144
    :goto_4
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popBackItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_b

    .line 151
    .line 152
    iget v4, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 153
    .line 154
    if-lt v4, v2, :cond_a

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_a
    invoke-direct {p0, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 161
    .line 162
    .line 163
    const/4 v1, 0x1

    .line 164
    goto :goto_4

    .line 165
    :cond_b
    if-eqz v1, :cond_c

    .line 166
    .line 167
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->cancelAll()V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cancelAll()V

    .line 175
    .line 176
    .line 177
    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ge v5, v1, :cond_d

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 190
    .line 191
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z

    .line 192
    .line 193
    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    .line 199
    .line 200
    :cond_e
    return-void
.end method

.method public cancelAllWaitReqs()V
    .locals 4

    .line 1
    const-string/jumbo v0, "start do cancel all wait reqs"

    .line 2
    .line 3
    .line 4
    const-string v1, "DataLoaderHelper"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 19
    .line 20
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cancelAllPreloadWaitReqs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 31
    .line 32
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "do cancel all wait reqs exception:"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    return-void

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 67
    .line 68
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_1
    :goto_2
    const-string v0, "need start mdl first"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 9
    .line 10
    const-string v1, "DataLoaderHelper"

    .line 11
    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 21
    .line 22
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->cancel()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    iget-object v2, v2, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isFetchSmartUrl()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->cancelFetchSmartUrlInfo()V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 90
    .line 91
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->cancelPreload(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 98
    .line 99
    invoke-virtual {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cancel(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_notifyPreloadCancel(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "[preload] cancel preload task. key = "

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 126
    .line 127
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_3
    return-void

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 140
    .line 141
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_8
    :goto_4
    const-string p1, "need start mdl first"

    .line 148
    .line 149
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public cancelTaskByFilePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelTask(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public cancelTaskByVideoId(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 9
    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_a

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long v2, v2, v4

    .line 40
    .line 41
    if-lez v2, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->toArray()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move v3, v1

    .line 50
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-ge v3, v6, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 61
    .line 62
    iget-object v7, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    iget-object v7, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    iget-object v6, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_3

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 95
    .line 96
    iget-object v8, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_2

    .line 103
    .line 104
    iget-object v7, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    cmp-long v2, v2, v4

    .line 123
    .line 124
    if-lez v2, :cond_7

    .line 125
    .line 126
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->toArray()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    move v3, v1

    .line 133
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-ge v3, v6, :cond_7

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 144
    .line 145
    iget-object v7, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_6

    .line 152
    .line 153
    iget-object v7, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_6

    .line 160
    .line 161
    iget-object v6, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_6

    .line 172
    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    check-cast v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 178
    .line 179
    iget-object v8, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-nez v8, :cond_5

    .line 186
    .line 187
    iget-object v7, v7, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 199
    .line 200
    .line 201
    move-result-wide v2

    .line 202
    cmp-long v2, v2, v4

    .line 203
    .line 204
    if-lez v2, :cond_a

    .line 205
    .line 206
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->toArray()Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move v3, v1

    .line 213
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-ge v3, v4, :cond_a

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 224
    .line 225
    iget-object v5, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_9

    .line 232
    .line 233
    iget-object v5, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_9

    .line 240
    .line 241
    iget-object v4, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_9

    .line 252
    .line 253
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 258
    .line 259
    iget-object v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-nez v6, :cond_8

    .line 266
    .line 267
    iget-object v5, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 277
    .line 278
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 279
    .line 280
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :goto_7
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-lez p1, :cond_b

    .line 293
    .line 294
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-ge v1, p1, :cond_b

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelTask(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_b
    return-void

    .line 313
    :catchall_1
    move-exception p1

    .line 314
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 315
    .line 316
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 319
    .line 320
    .line 321
    throw p1

    .line 322
    :cond_c
    :goto_a
    const-string p1, "DataLoaderHelper"

    .line 323
    .line 324
    const-string v0, "need start mdl first"

    .line 325
    .line 326
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method public checkLoaderType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 9
    .line 10
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 11
    .line 12
    if-eq v0, p1, :cond_2

    .line 13
    .line 14
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mBackupLoaderType:I

    .line 15
    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 22
    .line 23
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 30
    .line 31
    const/16 v1, 0x1c3b

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 37
    .line 38
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :try_start_1
    const-string p1, "DataLoaderHelper"

    .line 47
    .line 48
    const-string v0, "set backup loader type failed"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    return-void

    .line 55
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 56
    .line 57
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 64
    .line 65
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public cleanCacheDir(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cleanCacheDir(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_2
    return-void

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 38
    .line 39
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public cleanSpecifiedCacheDir(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p1, "DataLoaderHelper"

    .line 18
    .line 19
    const-string p2, "mInnerDataLoader == null"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 25
    .line 26
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cleanSpecifiedCacheDir(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 38
    .line 39
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_2
    return-void

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 52
    .line 53
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public clearAllCaches()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearAllCaches(Z)V

    return-void
.end method

.method public clearAllCaches(Z)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->removeAllHLSCache()V

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    if-nez v0, :cond_1

    .line 6
    const-string p1, "DataLoaderHelper"

    const-string v0, "mInnerDataLoader == null"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    :try_start_1
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->forceClearAllCaches()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->clearAllCaches()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    goto :goto_2

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1
.end method

.method public clearNetinfoCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->clearNetinfoCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    return-void

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 39
    .line 40
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-string v0, "DataLoaderHelper"

    .line 14
    .line 15
    const-string v1, "DataLoader not started, not need close"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 21
    .line 22
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->clearListeners()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->close()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelAllTasksInternal()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeAllPreloadMedia(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 48
    .line 49
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->stopListen(Ljava/lang/ref/WeakReference;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->unregisterListener(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 68
    .line 69
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 76
    .line 77
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public copyCache(Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v6, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mFileKey:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mDestPath:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v3, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mForceCopyUnfinished:Z

    .line 11
    .line 12
    iget-boolean v4, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mWaitIfCaching:Z

    .line 13
    .line 14
    new-instance v5, Lcom/ss/ttvideoengine/DataLoaderHelper$4;

    .line 15
    .line 16
    invoke-direct {v5, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$4;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v6

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mCustomDir:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, v6, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->asyncCopyOperation(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public createScene(Lcom/ss/ttvideoengine/preload/PreloadScene;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadScene;->toJsonString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->createScene(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public destroyScene(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->destroyScene(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public disableAutoTrim(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->makeFileAutoDeleteFlag(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 35
    .line 36
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public doParseHosts([Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreParseHost:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->doParseHosts([Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public downloadUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    array-length v0, v7

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v12, -0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p3

    .line 2
    invoke-direct/range {v0 .. v12}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public downloadUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p3

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    array-length v0, v7

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move/from16 v12, p4

    .line 4
    invoke-direct/range {v0 .. v14}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public downloadUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p3

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    array-length v0, v7

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v12, p4

    .line 6
    invoke-direct/range {v0 .. v14}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableAutoTrim(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->makeFileAutoDeleteFlag(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 35
    .line 36
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public focusMedia(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 24
    .line 25
    const/16 p2, 0x72

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->focusMedia(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method forceRemoveCacheFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->removeCacheFile(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    const-string v1, "DataLoaderHelper"

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_2
    const-string p1, "mInnerDataLoader == null"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, " force remove mdl file. key "

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->forceRemoveFileCache(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_3
    return-void

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 85
    .line 86
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public generateSubUrlKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->makeTsFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getAllCacheSize()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->tryLock(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->getAllCacheSize()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    move-wide v1, v3

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "DataLoaderHelper"

    .line 34
    .line 35
    const-string v3, "mInnerDataLoader == null"

    .line 36
    .line 37
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getAllCacheSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    add-long/2addr v1, v3

    .line 50
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 51
    .line 52
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 64
    .line 65
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_3
    :goto_3
    return-wide v1
.end method

.method public getCDNLog(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_4

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCDNLog(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "get cdn log suc"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 62
    .line 63
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_3

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 74
    .line 75
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "get log exception"

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_2
    return-object v2

    .line 107
    :goto_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 108
    .line 109
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    :goto_4
    return-object v2
.end method

.method public getCacheFileSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheSize(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 10
    .line 11
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_processCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 36
    .line 37
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 46
    .line 47
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 59
    .line 60
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public getCacheInfoByFilePath(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 14
    .line 15
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 28
    .line 29
    invoke-virtual {v2, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_processCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 38
    .line 39
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 52
    .line 53
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public getCacheInfoByTimeOut(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 4

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "****try get cacheinfo lock timeout"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 32
    .line 33
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 34
    .line 35
    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->tryLock(IJLjava/util/concurrent/TimeUnit;)Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    const-string p2, "####get cacheinfo lock suc"

    .line 42
    .line 43
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_processCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string p1, "get cacheinfo native end"

    .line 66
    .line 67
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto :goto_3

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    :try_start_3
    const-string p1, "get cacheinfo fail mdl not start"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 88
    .line 89
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 99
    .line 100
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 105
    .line 106
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string p4, "####not get cacheinfo lock timeout"

    .line 118
    .line 119
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "get cacheinfo interrupt exception:"

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_4
    const-string p1, "get cacheinfo all end"

    .line 158
    .line 159
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v2
.end method

.method public getCacheSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->getCacheSize(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    cmp-long v0, v3, v1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-wide v3

    .line 33
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCacheSize(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    cmp-long p1, v3, v1

    .line 43
    .line 44
    if-lez p1, :cond_3

    .line 45
    .line 46
    move-wide v1, v3

    .line 47
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 48
    .line 49
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 52
    .line 53
    .line 54
    return-wide v1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 62
    .line 63
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public getCacheSizeByFilePath(Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 15
    .line 16
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 19
    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 29
    .line 30
    invoke-virtual {v3, v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCacheSize(Ljava/lang/String;Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    cmp-long p1, v2, v0

    .line 35
    .line 36
    if-lez p1, :cond_0

    .line 37
    .line 38
    move-wide v0, v2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 47
    .line 48
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public getCheckSumInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->getCheckSumInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getContinueCacheSize(Ljava/lang/String;IJ)J
    .locals 0

    .line 1
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 p2, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget p4, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {p1, p4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    sget p4, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 18
    .line 19
    invoke-virtual {p1, p4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 20
    .line 21
    .line 22
    return-wide p2
.end method

.method public getDataLoaderUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v6, p4

    .line 10
    .line 11
    move-object/from16 v7, p5

    .line 12
    .line 13
    const/16 v18, 0x0

    .line 14
    .line 15
    const/16 v19, 0x0

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    const-wide/16 v14, 0x0

    .line 26
    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    const/16 v17, -0x1

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getDownloadCountByVid(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 15
    .line 16
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getDownloadCount(Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 35
    .line 36
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    :try_start_1
    const-string v0, "DataLoaderHelper"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "get download count failed:"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_2
    return-wide v1

    .line 70
    :goto_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    :goto_4
    return-wide v1
.end method

.method public getInt64Value(IJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    return-wide p1
.end method

.method public getIntValue(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    sparse-switch p1, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    :try_start_0
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadAllTs:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :sswitch_1
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadFirstTs:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_2
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotOnlyNotifyNetError:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_3
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotifyError:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_4
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_5
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mSupportHls:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 34
    .line 35
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_7
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCurrentAccessType:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 42
    .line 43
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreconnect:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_9
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBackupIP:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :sswitch_a
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreParseHost:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :sswitch_b
    const/4 p1, 0x6

    .line 53
    invoke-static {p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getIntValue(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :sswitch_c
    const/4 p1, 0x4

    .line 59
    invoke-static {p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getIntValue(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :sswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 65
    .line 66
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSessionReuse:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :sswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 70
    .line 71
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxTlsVersion:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :sswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 75
    .line 76
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSMainType:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_10
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlPreloadStrategy:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :sswitch_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 83
    .line 84
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSocketReuse:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :sswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 88
    .line 89
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 93
    .line 94
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 97
    .line 98
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 101
    .line 102
    .line 103
    return p1

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 105
    .line 106
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    nop

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0xc -> :sswitch_10
        0x5a -> :sswitch_f
        0x64 -> :sswitch_e
        0x65 -> :sswitch_d
        0x67 -> :sswitch_c
        0x69 -> :sswitch_b
        0x72 -> :sswitch_a
        0x73 -> :sswitch_9
        0x3e9 -> :sswitch_8
        0x3f0 -> :sswitch_7
        0x47e -> :sswitch_6
        0x2331 -> :sswitch_5
        0x2338 -> :sswitch_4
        0x233a -> :sswitch_3
        0x233b -> :sswitch_2
        0x233d -> :sswitch_1
        0x233f -> :sswitch_0
    .end sparse-switch
.end method

.method public getIoWriteError(Ljava/lang/String;)J
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-wide v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/ABLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-wide v1

    .line 30
    :cond_2
    const/16 v3, 0x3f5

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v0, p1, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValueByStr(Ljava/lang/String;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-string p1, "DataLoaderHelper"

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v5, "get io write error code = "

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock()V

    .line 61
    .line 62
    .line 63
    return-wide v3

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock()V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public getLongValue(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x3eb

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x480

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x481

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 23
    .line 24
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 27
    .line 28
    .line 29
    return-wide v1

    .line 30
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 31
    .line 32
    iget-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorMinAllowLoadSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 35
    .line 36
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 39
    .line 40
    .line 41
    return-wide v0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 45
    .line 46
    iget-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorTimeInternal:J

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-wide v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlProtocolHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 56
    .line 57
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 60
    .line 61
    .line 62
    return-wide v1

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 64
    .line 65
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public getMdlInitializeErrorString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public getMdlInitializeState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 2
    .line 3
    return v0
.end method

.method public getMdlInvalidCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;->None:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidCode:I

    .line 10
    .line 11
    return v0
.end method

.method public getMissReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 15
    .line 16
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 19
    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMissReason:I

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTHelper;->keyFromFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 v2, 0x1

    .line 43
    if-ne p1, v2, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    const/4 p2, 0x0

    .line 47
    :goto_1
    if-nez p2, :cond_5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 51
    .line 52
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseGroupId:I

    .line 53
    .line 54
    if-lez p1, :cond_6

    .line 55
    .line 56
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_6

    .line 61
    .line 62
    move-object p3, p4

    .line 63
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 64
    .line 65
    invoke-virtual {p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getMissReason(Ljava/lang/String;Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    cmp-long p3, p1, v0

    .line 70
    .line 71
    if-lez p3, :cond_0

    .line 72
    .line 73
    move-wide v0, p1

    .line 74
    goto :goto_0

    .line 75
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 81
    .line 82
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method getNetworkName(J)Ljava/lang/String;
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-eq p1, p2, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string/jumbo p1, "wifi"

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    const-string p1, "cellular"

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_2
    const-string p1, "default"

    .line 20
    .line 21
    return-object p1
.end method

.method public getPlayLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 10
    .line 11
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v2, 0x3f2

    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringValueByStr(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 28
    .line 29
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    return-object v1

    .line 43
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 44
    .line 45
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public getPreloadTaskCount()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->count()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    return-wide v0
.end method

.method public getPreloadTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 10
    .line 11
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v2, 0x3f4

    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringValueByStr(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 28
    .line 29
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    return-object v1

    .line 43
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 44
    .line 45
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public getProbeIntervalMS()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getProbeType()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5e5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2332

    if-eq p1, v0, :cond_0

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    goto :goto_3

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketTraingCenterConfigStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 5
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVersionInfo:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    if-eqz p1, :cond_3

    const/16 v0, 0xb

    .line 7
    invoke-virtual {p1, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVersionInfo:Ljava/lang/String;

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mVersionInfo:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_3
    const/4 p1, 0x0

    return-object p1

    .line 11
    :goto_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    throw p1
.end method

.method public getStringValue(IJLjava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v14, p4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[preload] getStringValue, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "DataLoaderHelper"

    invoke-static {v15, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x5e2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5e5

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 13
    :cond_0
    iget-object v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_9

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 14
    iget-object v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    invoke-virtual {v0, v14}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->getCustomHttpHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 21
    const-string v2, "[customheader] get custom header:%s url: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v15, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v3

    .line 24
    :cond_5
    iget-object v0, v13, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v0, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->itemForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    .line 26
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 27
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    if-eqz v1, :cond_9

    .line 28
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 29
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/ttvideoengine/DataLoaderResourceProvider;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 30
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/ttvideoengine/DataLoaderResourceProvider;->getUrls()[Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v0, v14}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v12

    .line 32
    iget-wide v1, v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 33
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/ttvideoengine/DataLoaderResourceProvider;->getPreloadSize()J

    move-result-wide v5

    .line 34
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/ttvideoengine/DataLoaderResourceProvider;->getCacheDir()Ljava/lang/String;

    move-result-object v8

    .line 35
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    :cond_7
    move-object v9, v3

    .line 37
    :goto_3
    iget-wide v3, v12, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    const/4 v11, 0x0

    const/16 v17, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    move-object v13, v12

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyQuery(Ljava/lang/String;Ljava/lang/String;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v14, v16

    .line 39
    :goto_4
    iput-object v14, v13, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 40
    const-string v0, "[preload] get proxxy url from url: %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v15, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-object v3
.end method

.method public isNeedPlayInfo()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBufferPreload:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 8
    .line 9
    iget-wide v2, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    iget-wide v2, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_1
    return v1
.end method

.method public isNotifyNetworkErrorCodes(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNotifyNetErrors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public isReportLogEnable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 11
    .line 12
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 25
    .line 26
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public moveToScene(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->switchToScene(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public notifyPreloadCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    move-object v6, p1

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public notifyTriggerPreload(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-string v6, ""

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    move-wide v4, p1

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onNotify(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v0, "app_session_id"

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    sget-object v4, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    iget v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    const/4 v3, 0x4

    const/16 v4, 0xa

    const-string v5, "DataLoaderHelper"

    if-eq v0, v4, :cond_2f

    const/16 v6, 0xb

    if-eq v0, v6, :cond_2d

    const/16 v6, 0x18

    if-eq v0, v6, :cond_2b

    const/16 v6, 0x32

    if-eq v0, v6, :cond_31

    const/16 v6, 0x46

    const/4 v7, 0x3

    if-eq v0, v6, :cond_27

    const/16 v6, 0x2bc

    const-string v8, "net_speed"

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v0, v6, :cond_21

    const/16 v6, 0x7d0

    if-eq v0, v6, :cond_20

    const/16 v6, 0x2be

    if-eq v0, v6, :cond_1e

    const/16 v6, 0x2bf

    if-eq v0, v6, :cond_31

    const/16 v6, 0x385

    if-eq v0, v6, :cond_1d

    const/16 v6, 0x386

    if-eq v0, v6, :cond_1c

    const-wide/16 v10, 0x2

    const-string v6, ", task type = "

    const-wide/16 v12, 0x3

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT DEAL notify info what =  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 8
    :pswitch_0
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_31

    .line 9
    const-string/jumbo v3, "videoplayer_mdl_sample"

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEventV2(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 10
    :pswitch_1
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_2

    .line 11
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 12
    :cond_2
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_3

    .line 13
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v5, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v3, v5}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    :cond_3
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z

    if-eqz v0, :cond_31

    .line 15
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 16
    :pswitch_2
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 17
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/download/Downloader;->downloadDidSuspened(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 18
    :pswitch_3
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 19
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onDownloadCompleted(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 20
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    move-result-object v0

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/download/Downloader;->progress(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 21
    :pswitch_4
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_4

    .line 22
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 23
    :cond_4
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 24
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3, v2}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 25
    :pswitch_5
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 26
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v3, v2}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 27
    :pswitch_6
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_5

    .line 28
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 29
    :cond_5
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    if-eqz v3, :cond_31

    const/4 v4, 0x6

    .line 30
    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfoToMonitor(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 31
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDL Alog: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 32
    :pswitch_8
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    if-eqz v3, :cond_31

    .line 33
    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    invoke-virtual {v0, v14, v2, v3}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 34
    :pswitch_9
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    cmp-long v3, v3, v12

    if-nez v3, :cond_7

    .line 35
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onDownloadFail(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 36
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 37
    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    move-result-object v5

    long-to-int v3, v3

    iget-wide v6, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 39
    invoke-direct {v1, v3, v6, v7, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_errorWithCode(IJLjava/lang/String;)Lcom/ss/ttvideoengine/utils/Error;

    move-result-object v2

    .line 40
    invoke-virtual {v5, v0, v2}, Lcom/ss/ttvideoengine/download/Downloader;->downloadFail(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    :cond_6
    return-void

    :cond_7
    if-eqz v0, :cond_31

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " task fail log = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", code = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v3, v0

    if-ge v3, v9, :cond_8

    return-void

    .line 44
    :cond_8
    aget-object v0, v0, v14

    .line 45
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v3, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onLoaderFail(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    .line 46
    :cond_9
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->itemForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    move-result-object v3

    if-nez v3, :cond_a

    return-void

    .line 47
    :cond_a
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAllPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 48
    new-instance v6, Lcom/ss/ttvideoengine/utils/Error;

    iget-wide v8, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    long-to-int v8, v8

    iget-object v9, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const-string v12, "kTTVideoErrorDomainDataLoaderPreload"

    invoke-direct {v6, v12, v8, v9}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    iget-object v8, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v0

    goto :goto_1

    :cond_b
    iget-object v8, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 50
    :goto_1
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->getLoadProgressByRawKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    move-result-object v9

    if-nez v9, :cond_c

    .line 51
    new-instance v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    invoke-direct {v9, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 52
    :cond_c
    iget-object v12, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    iput-object v12, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mVideoId:Ljava/lang/String;

    .line 53
    iget-wide v12, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    long-to-int v12, v12

    iput v12, v9, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 54
    invoke-virtual {v9, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->setUp(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 55
    invoke-virtual {v9, v0, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->onError(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 56
    iget-object v12, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v12, :cond_d

    .line 57
    invoke-virtual {v12, v9}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLoadProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 58
    :cond_d
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->putByRawKey(Ljava/lang/String;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 59
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->isCacheEnd()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v9}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->isPreloadComplete()Z

    move-result v12

    if-eqz v12, :cond_31

    .line 60
    :cond_e
    invoke-virtual {v4, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pop all task item. videoId = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " key = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->removeLoadProgressByRawKey(Ljava/lang/String;)V

    .line 63
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    .line 64
    new-instance v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    invoke-direct {v4, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 65
    iget-wide v12, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    long-to-int v8, v12

    iput v8, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mTaskType:I

    .line 66
    iget-object v8, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    iput-object v8, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mVideoId:Ljava/lang/String;

    .line 67
    iput-object v0, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 68
    iget-object v0, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mLocalFilePath:Ljava/lang/String;

    .line 70
    iput-object v5, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 71
    :cond_f
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V

    .line 72
    :cond_10
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v12, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    cmp-long v0, v12, v10

    if-nez v0, :cond_31

    .line 73
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    invoke-direct {v0, v7}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 74
    iput-object v6, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 75
    iput-object v9, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->loadProgress:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 76
    iput-object v5, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadDataInfo:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 77
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    goto/16 :goto_8

    .line 78
    :pswitch_a
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onLoaderCancel(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    return-void

    .line 79
    :pswitch_b
    :try_start_1
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->process(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 80
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v2, :cond_11

    .line 81
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotifyCDNLog(Lorg/json/JSONObject;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    .line 82
    :cond_11
    :goto_2
    const-string v2, "avmdlcdnlog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive log:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 83
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 84
    :pswitch_c
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 85
    iget-wide v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    iget-wide v6, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v8, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const/16 v3, 0x14

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    goto/16 :goto_8

    .line 86
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyIsFileCacheProgress log = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " code = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    long-to-int v6, v14

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 88
    iget-wide v5, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    cmp-long v0, v5, v12

    if-nez v0, :cond_14

    .line 89
    iget v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    if-ne v0, v3, :cond_12

    .line 90
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onDownloadCompleted(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v14

    goto :goto_4

    :cond_12
    if-ne v0, v7, :cond_13

    .line 91
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onDownloadProgress(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v14

    goto :goto_4

    :cond_13
    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_31

    .line 92
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    move-result-object v0

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/download/Downloader;->progress(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    cmp-long v0, v5, v10

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    const/4 v9, 0x0

    .line 93
    :goto_5
    invoke-direct {v1, v2, v9}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_progressInfoString(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;Z)V

    goto/16 :goto_8

    .line 94
    :pswitch_e
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->speedInfoUpdate()V

    .line 95
    invoke-static {v8}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 96
    :cond_16
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v3, :cond_17

    .line 97
    iget-wide v5, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    iget-wide v7, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v9, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual/range {v3 .. v9}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    .line 98
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->reportSpeed(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    goto/16 :goto_8

    .line 99
    :pswitch_f
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_18

    .line 100
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 101
    :cond_18
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_19

    .line 102
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v3, v4}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 103
    :cond_19
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z

    if-eqz v0, :cond_31

    .line 104
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 105
    :pswitch_10
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_1a

    .line 106
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 107
    :cond_1a
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_1b

    .line 108
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v5, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 109
    :cond_1b
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z

    if-eqz v0, :cond_31

    .line 110
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 111
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyIsFileDeleteSizeByUsedTime size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v6, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v6, :cond_31

    .line 113
    iget-wide v10, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    const/4 v12, 0x0

    const/16 v7, 0x1f

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    goto/16 :goto_8

    .line 114
    :cond_1d
    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    const-string/jumbo v3, "target network:%d current network:%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v3, "multinetwork"

    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-wide v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    invoke-virtual {v1, v4, v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getNetworkName(J)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-wide v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    invoke-virtual {v1, v4, v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getNetworkName(J)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v4, :cond_31

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do callback target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    invoke-interface {v4, v0, v2}, Lcom/ss/ttvideoengine/DataLoaderListener;->onMultiNetworkSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end do callback target: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 125
    :cond_1e
    invoke-static {v8}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 126
    :cond_1f
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mTestSpeedListener:Lcom/ss/ttvideoengine/TestSpeedListener;

    if-eqz v0, :cond_31

    if-eqz v0, :cond_31

    .line 127
    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-interface {v0, v10, v2}, Lcom/ss/ttvideoengine/TestSpeedListener;->onNotify(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 128
    :cond_20
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v3, :cond_31

    .line 129
    iget-wide v5, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    iget-wide v7, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v9, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const/16 v4, 0x21

    invoke-virtual/range {v3 .. v9}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    goto/16 :goto_8

    .line 130
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyIsSpeedTestSampledByTime  mNeedSpeedTestByTimeInternal:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedSpeedTestByTimeInternal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v8}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    .line 132
    :cond_22
    iget-object v11, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mTestSpeedListener:Lcom/ss/ttvideoengine/TestSpeedListener;

    if-eqz v11, :cond_23

    .line 133
    iget-wide v13, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    iget-object v6, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v7, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logExtraJsonStr:Ljava/lang/String;

    const/4 v12, 0x2

    move-wide v15, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-interface/range {v11 .. v19}, Lcom/ss/ttvideoengine/TestSpeedListener;->onNotify(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_23
    iget v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedSpeedTestByTimeInternal:I

    const/4 v3, -0x1

    if-eq v0, v9, :cond_25

    if-eq v0, v10, :cond_24

    move v12, v3

    goto :goto_6

    :cond_24
    const/16 v0, 0x20

    move v12, v0

    goto :goto_6

    :cond_25
    move v12, v10

    .line 135
    :goto_6
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    if-eq v12, v3, :cond_31

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyIsSpeedTestSampledByTimenotify by"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v12, v10, :cond_26

    const-string v3, "general"

    goto :goto_7

    :cond_26
    const-string/jumbo v3, "timeinternal"

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "speed info code:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " parameter:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v11, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    iget-wide v13, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    iget-wide v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    move-wide v15, v3

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    goto/16 :goto_8

    .line 138
    :cond_27
    iget-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_onHeartBeatFire(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    .line 139
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v3, :cond_28

    .line 140
    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 141
    :cond_28
    iget-object v3, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v3, :cond_29

    .line 142
    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    invoke-virtual {v3, v7, v4, v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 143
    :cond_29
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    if-eqz v0, :cond_2a

    iget-boolean v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z

    if-eqz v0, :cond_2a

    .line 144
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v4}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 145
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heart beat msg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 146
    :cond_2b
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onLoaderOpen(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 147
    :cond_2c
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 148
    iget-wide v6, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    iget-object v8, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const/16 v3, 0x1e

    const-wide/16 v4, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    goto :goto_8

    .line 149
    :cond_2d
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_2e

    .line 150
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 151
    :cond_2e
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 152
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v3, v4}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live loader log sample msg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 154
    :cond_2f
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    if-eqz v0, :cond_30

    .line 155
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 156
    :cond_30
    iget-object v0, v1, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    if-eqz v0, :cond_31

    .line 157
    iget-object v4, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    iget-object v6, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4, v6}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live loader log msg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "onPortraitChange enginePortait: "

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "DataLoaderHelper"

    .line 49
    .line 50
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 54
    .line 55
    const/16 v0, 0x1d16

    .line 56
    .line 57
    invoke-virtual {p2, v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setStringValue(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onStartComplete()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataloaderStartComplete:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 5
    .line 6
    sget-object v1, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->Initializing:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->InitializeComplete:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 21
    .line 22
    :cond_0
    const-string v0, "MediaDataLoader start complete"

    .line 23
    .line 24
    const-string v1, "DataLoaderHelper"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCurrentAccessType:I

    .line 38
    .line 39
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x1c33

    .line 44
    .line 45
    invoke-virtual {v2, v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v2, "strategy center running failed, set mdl preload strategy back "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 82
    .line 83
    const/16 v1, 0x406

    .line 84
    .line 85
    iget v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->onMDLStartComplete()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->isHlsProxyValid()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHLSProxyValid:Z

    .line 102
    .line 103
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    const-wide/16 v5, 0x0

    .line 108
    .line 109
    const-string v7, "mdl start complete"

    .line 110
    .line 111
    const/16 v2, 0xb

    .line 112
    .line 113
    const-wide/16 v3, 0x0

    .line 114
    .line 115
    invoke-virtual/range {v1 .. v7}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onNotify(IJJLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->onStartComplete()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public p2pPredown(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public playTaskProgress()F
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    return v0
.end method

.method public preConnect(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    const-string v1, "https"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x1bb

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v1, 0x50

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preConnectByHost(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 58
    .line 59
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 66
    .line 67
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public proxyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    .line 2
    invoke-virtual/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    .line 3
    invoke-virtual/range {v0 .. v19}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quickQueryCacheFileSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    return-wide v1

    .line 27
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->quickQueryCacheSize(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    cmp-long p1, v3, v1

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    move-wide v1, v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 44
    .line 45
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public removeAllPreloadMedia(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_ml_removeAllMedias(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeCacheFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->removeCacheFile(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    const-string v1, "DataLoaderHelper"

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_2
    const-string p1, "mInnerDataLoader == null"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "remove mdl file. key "

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->removeFileCache(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_3
    return-void

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 85
    .line 86
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public removeDownloadFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->removeDownloadFile(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    const-string v1, "DataLoaderHelper"

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_2
    const-string p1, "mInnerDataLoader == null"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "remove mdl file, download key "

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->removeFileCache(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 71
    .line 72
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_3
    return-void

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 85
    .line 86
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public removeListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->removeListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_ml_removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removePreloadMedia(Lcom/ss/ttvideoengine/preload/PreloadMedia;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public removePriorityPreloadTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 19
    .line 20
    const/16 v1, 0x74

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_doMl_removePriorityTask(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public resetPreloadTraceId(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->resetPreloadTraceId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 30
    .line 31
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_4

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 42
    .line 43
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_3
    return-void

    .line 54
    :goto_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 55
    .line 56
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public resumeFileWriteIO()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->resumeFileWriteIO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 32
    .line 33
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public resumePreconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DataLoaderHelper"

    .line 6
    .line 7
    const-string v1, "need start mdl first"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 14
    .line 15
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->resumePreConnect()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setBackUpIP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setBackUpIP(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBackupIP:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setCacheInfoLists([Ljava/lang/String;[J)V
    .locals 2

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    const-string/jumbo v1, "setcustom paths and maxcaches "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 10
    .line 11
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->setCacheInfoList([Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 22
    .line 23
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 31
    .line 32
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "class loader null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 12
    .line 13
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mClasssLoader:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mClasssLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 28
    .line 29
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "set class loader end"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 56
    .line 57
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "set context null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 12
    .line 13
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setContext(Landroid/content/Context;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->loadMDLCache()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 42
    .line 43
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "set context end"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 70
    .line 71
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public declared-synchronized setEngineUploader(Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public setIntValue(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "setIntValue key = "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", value = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "DataLoaderHelper"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    if-eq p1, v0, :cond_18

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq p1, v2, :cond_17

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-eq p1, v3, :cond_16

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    if-eq p1, v4, :cond_15

    .line 50
    .line 51
    const/4 v5, 0x5

    .line 52
    if-eq p1, v5, :cond_14

    .line 53
    .line 54
    const/4 v6, 0x7

    .line 55
    if-eq p1, v6, :cond_13

    .line 56
    .line 57
    const/16 v7, 0x8

    .line 58
    .line 59
    if-eq p1, v7, :cond_12

    .line 60
    .line 61
    const/16 v7, 0x9

    .line 62
    .line 63
    if-eq p1, v7, :cond_11

    .line 64
    .line 65
    const/16 v7, 0x37

    .line 66
    .line 67
    if-eq p1, v7, :cond_10

    .line 68
    .line 69
    const/16 v7, 0x38

    .line 70
    .line 71
    if-eq p1, v7, :cond_f

    .line 72
    .line 73
    const/16 v7, 0x3c

    .line 74
    .line 75
    if-eq p1, v7, :cond_e

    .line 76
    .line 77
    const/16 v7, 0x3d

    .line 78
    .line 79
    if-eq p1, v7, :cond_d

    .line 80
    .line 81
    const/16 v7, 0x64

    .line 82
    .line 83
    if-eq p1, v7, :cond_c

    .line 84
    .line 85
    const/16 v8, 0x65

    .line 86
    .line 87
    if-eq p1, v8, :cond_b

    .line 88
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 94
    .line 95
    .line 96
    packed-switch p1, :pswitch_data_1

    .line 97
    .line 98
    .line 99
    packed-switch p1, :pswitch_data_2

    .line 100
    .line 101
    .line 102
    packed-switch p1, :pswitch_data_3

    .line 103
    .line 104
    .line 105
    goto/16 :goto_7

    .line 106
    .line 107
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 108
    .line 109
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedCoefficientValue:I

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :catch_0
    move-exception p1

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :pswitch_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 120
    .line 121
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableBenchMarkIOSpeed:I

    .line 122
    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :pswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 126
    .line 127
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMainToBackUpDelayedTime:I

    .line 128
    .line 129
    invoke-static {v3, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :pswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 135
    .line 136
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSBackType:I

    .line 137
    .line 138
    invoke-static {v0, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 144
    .line 145
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSMainType:I

    .line 146
    .line 147
    invoke-static {v7, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :pswitch_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 153
    .line 154
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOnlyUseCdn:I

    .line 155
    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :pswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 159
    .line 160
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mErrorStateTrustTime:I

    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :pswitch_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 165
    .line 166
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIpBucket:I

    .line 167
    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :pswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 171
    .line 172
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpCountEachDomain:I

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :pswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 177
    .line 178
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePcdnAuto:I

    .line 179
    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :pswitch_a
    if-nez p2, :cond_0

    .line 183
    .line 184
    move v0, v7

    .line 185
    :cond_0
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedMDLLoadMDLV2Lib:Z

    .line 186
    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :pswitch_b
    if-lez p2, :cond_1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    move v0, v7

    .line 193
    :goto_0
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mForbidNativeMDLForOriUrl:Z

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :pswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 198
    .line 199
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOkHttpLoader:I

    .line 200
    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :pswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 204
    .line 205
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEncryptVersion:I

    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :sswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 210
    .line 211
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportHeaders:I

    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :sswitch_1
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableVideoModelHitCacheCallback:I

    .line 216
    .line 217
    goto/16 :goto_7

    .line 218
    .line 219
    :sswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 220
    .line 221
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mHlsTsFileKeyGenerateType:I

    .line 222
    .line 223
    goto/16 :goto_7

    .line 224
    .line 225
    :sswitch_3
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLoadMdlv2Fulllib:I

    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :sswitch_4
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadAllTs:I

    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :sswitch_5
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDisableFilePathCheck:I

    .line 234
    .line 235
    goto/16 :goto_7

    .line 236
    .line 237
    :sswitch_6
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnablePreloadFirstTs:I

    .line 238
    .line 239
    goto/16 :goto_7

    .line 240
    .line 241
    :sswitch_7
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotOnlyNotifyNetError:I

    .line 242
    .line 243
    goto/16 :goto_7

    .line 244
    .line 245
    :sswitch_8
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNotifyError:I

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :sswitch_9
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCenterPreloadProgressCallback:I

    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    :sswitch_a
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHLSProxy:I

    .line 254
    .line 255
    goto/16 :goto_7

    .line 256
    .line 257
    :sswitch_b
    if-eq p2, v0, :cond_2

    .line 258
    .line 259
    if-nez p2, :cond_19

    .line 260
    .line 261
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 262
    .line 263
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMultiDownloadPath:I

    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :sswitch_c
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableLibManager:I

    .line 268
    .line 269
    goto/16 :goto_7

    .line 270
    .line 271
    :sswitch_d
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableHls:I

    .line 272
    .line 273
    goto/16 :goto_7

    .line 274
    .line 275
    :sswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 276
    .line 277
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnorePlayInfo:I

    .line 278
    .line 279
    goto/16 :goto_7

    .line 280
    .line 281
    :sswitch_f
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableDumpLibMd5:I

    .line 282
    .line 283
    goto/16 :goto_7

    .line 284
    .line 285
    :sswitch_10
    if-ltz p2, :cond_19

    .line 286
    .line 287
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 288
    .line 289
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevMemorySizeMB:I

    .line 290
    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :sswitch_11
    if-ltz p2, :cond_19

    .line 294
    .line 295
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 296
    .line 297
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevDiskSizeMB:I

    .line 298
    .line 299
    goto/16 :goto_7

    .line 300
    .line 301
    :sswitch_12
    if-ltz p2, :cond_19

    .line 302
    .line 303
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 304
    .line 305
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2pUpload:I

    .line 306
    .line 307
    goto/16 :goto_7

    .line 308
    .line 309
    :sswitch_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 310
    .line 311
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCustomDirSearchAllPath:I

    .line 312
    .line 313
    goto/16 :goto_7

    .line 314
    .line 315
    :sswitch_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 316
    .line 317
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEnginePortrait:I

    .line 318
    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :sswitch_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 322
    .line 323
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileManagerInterval:I

    .line 324
    .line 325
    goto/16 :goto_7

    .line 326
    .line 327
    :sswitch_16
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 328
    .line 329
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionCacheInterval:I

    .line 330
    .line 331
    goto/16 :goto_7

    .line 332
    .line 333
    :sswitch_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 334
    .line 335
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTraceIdPreloadLog:I

    .line 336
    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :sswitch_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 340
    .line 341
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadInfoRecordMaxCnt:I

    .line 342
    .line 343
    goto/16 :goto_7

    .line 344
    .line 345
    :sswitch_19
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 346
    .line 347
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMissReason:I

    .line 348
    .line 349
    goto/16 :goto_7

    .line 350
    .line 351
    :sswitch_1a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 352
    .line 353
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUpdateCacheFileInternal:I

    .line 354
    .line 355
    goto/16 :goto_7

    .line 356
    .line 357
    :sswitch_1b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 358
    .line 359
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDisableRecentCache:I

    .line 360
    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :sswitch_1c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 364
    .line 365
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseGroupId:I

    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :sswitch_1d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 370
    .line 371
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckCacheDir:I

    .line 372
    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :sswitch_1e
    if-lez p2, :cond_19

    .line 376
    .line 377
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 378
    .line 379
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownLogMaxSize:I

    .line 380
    .line 381
    goto/16 :goto_7

    .line 382
    .line 383
    :sswitch_1f
    if-lez p2, :cond_19

    .line 384
    .line 385
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 386
    .line 387
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOptimizeRange:I

    .line 388
    .line 389
    goto/16 :goto_7

    .line 390
    .line 391
    :sswitch_20
    if-lez p2, :cond_19

    .line 392
    .line 393
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 394
    .line 395
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnoreTextSpeedTest:I

    .line 396
    .line 397
    goto/16 :goto_7

    .line 398
    .line 399
    :sswitch_21
    if-lt p2, v0, :cond_19

    .line 400
    .line 401
    const/16 p1, 0x20

    .line 402
    .line 403
    if-le p2, p1, :cond_3

    .line 404
    .line 405
    goto/16 :goto_7

    .line 406
    .line 407
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 408
    .line 409
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-nez p1, :cond_4

    .line 416
    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 423
    .line 424
    iget-object v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const/16 v2, 0x2c

    .line 430
    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    iput-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 446
    .line 447
    goto :goto_1

    .line 448
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 449
    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p2

    .line 454
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 455
    .line 456
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    const-string p2, "cur p2p cost tag is: "

    .line 462
    .line 463
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 467
    .line 468
    iget-object p2, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_7

    .line 481
    .line 482
    :sswitch_22
    if-lez p2, :cond_19

    .line 483
    .line 484
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 485
    .line 486
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableTimeout:I

    .line 487
    .line 488
    goto/16 :goto_7

    .line 489
    .line 490
    :sswitch_23
    if-lez p2, :cond_19

    .line 491
    .line 492
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 493
    .line 494
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSkipCDNBeforeExpiredSec:I

    .line 495
    .line 496
    goto/16 :goto_7

    .line 497
    .line 498
    :sswitch_24
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 499
    .line 500
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileMutexOptimize:I

    .line 501
    .line 502
    goto/16 :goto_7

    .line 503
    .line 504
    :sswitch_25
    if-ltz p2, :cond_19

    .line 505
    .line 506
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 507
    .line 508
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableWaitNetReachable:I

    .line 509
    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :sswitch_26
    if-ltz p2, :cond_19

    .line 513
    .line 514
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 515
    .line 516
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableStopRetry:I

    .line 517
    .line 518
    goto/16 :goto_7

    .line 519
    .line 520
    :sswitch_27
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 521
    .line 522
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMaxSizeKB:I

    .line 523
    .line 524
    goto/16 :goto_7

    .line 525
    .line 526
    :sswitch_28
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 527
    .line 528
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMode:I

    .line 529
    .line 530
    goto/16 :goto_7

    .line 531
    .line 532
    :sswitch_29
    if-lez p2, :cond_19

    .line 533
    .line 534
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 535
    .line 536
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpNum:I

    .line 537
    .line 538
    goto/16 :goto_7

    .line 539
    .line 540
    :sswitch_2a
    if-lez p2, :cond_19

    .line 541
    .line 542
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 543
    .line 544
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolTTLSecond:I

    .line 545
    .line 546
    goto/16 :goto_7

    .line 547
    .line 548
    :sswitch_2b
    if-lez p2, :cond_19

    .line 549
    .line 550
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 551
    .line 552
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableThreadPoolCheckIdle:I

    .line 553
    .line 554
    goto/16 :goto_7

    .line 555
    .line 556
    :sswitch_2c
    if-lez p2, :cond_19

    .line 557
    .line 558
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 559
    .line 560
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolMinCount:I

    .line 561
    .line 562
    goto/16 :goto_7

    .line 563
    .line 564
    :sswitch_2d
    if-ltz p2, :cond_19

    .line 565
    .line 566
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 567
    .line 568
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadStackSizeLevel:I

    .line 569
    .line 570
    goto/16 :goto_7

    .line 571
    .line 572
    :sswitch_2e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 573
    .line 574
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoMaxIdleTimeSec:I

    .line 575
    .line 576
    goto/16 :goto_7

    .line 577
    .line 578
    :sswitch_2f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 579
    .line 580
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh2:I

    .line 581
    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :sswitch_30
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 585
    .line 586
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh1:I

    .line 587
    .line 588
    goto/16 :goto_7

    .line 589
    .line 590
    :sswitch_31
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 591
    .line 592
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoRingBufferSizeKB:I

    .line 593
    .line 594
    goto/16 :goto_7

    .line 595
    .line 596
    :sswitch_32
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 597
    .line 598
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBLS:I

    .line 599
    .line 600
    goto/16 :goto_7

    .line 601
    .line 602
    :sswitch_33
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 603
    .line 604
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBNM:I

    .line 605
    .line 606
    goto/16 :goto_7

    .line 607
    .line 608
    :sswitch_34
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 609
    .line 610
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableStorageModule:I

    .line 611
    .line 612
    goto/16 :goto_7

    .line 613
    .line 614
    :sswitch_35
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 615
    .line 616
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableByteMediaNetLoader:I

    .line 617
    .line 618
    goto/16 :goto_7

    .line 619
    .line 620
    :sswitch_36
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 621
    .line 622
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGetCookieTokenLevel:I

    .line 623
    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :sswitch_37
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableCheckPreloadUrls:I

    .line 627
    .line 628
    goto/16 :goto_7

    .line 629
    .line 630
    :sswitch_38
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableStrategyCenterCancelAll:I

    .line 631
    .line 632
    goto/16 :goto_7

    .line 633
    .line 634
    :sswitch_39
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadRatio:I

    .line 635
    .line 636
    goto/16 :goto_7

    .line 637
    .line 638
    :sswitch_3a
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDashAudioPreloadMinSize:I

    .line 639
    .line 640
    goto/16 :goto_7

    .line 641
    .line 642
    :sswitch_3b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 643
    .line 644
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCellularUp:I

    .line 645
    .line 646
    goto/16 :goto_7

    .line 647
    .line 648
    :sswitch_3c
    if-lez p2, :cond_19

    .line 649
    .line 650
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 651
    .line 652
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedReport:I

    .line 653
    .line 654
    goto/16 :goto_7

    .line 655
    .line 656
    :sswitch_3d
    if-lez p2, :cond_19

    .line 657
    .line 658
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 659
    .line 660
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedEngine:I

    .line 661
    .line 662
    goto/16 :goto_7

    .line 663
    .line 664
    :sswitch_3e
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableSetMDLNetStatus:I

    .line 665
    .line 666
    goto/16 :goto_7

    .line 667
    .line 668
    :sswitch_3f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 669
    .line 670
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseThreadPool:I

    .line 671
    .line 672
    goto/16 :goto_7

    .line 673
    .line 674
    :sswitch_40
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 675
    .line 676
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckContentTypeMethod:I

    .line 677
    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :sswitch_41
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 681
    .line 682
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxLoaderLogNum:I

    .line 683
    .line 684
    goto/16 :goto_7

    .line 685
    .line 686
    :sswitch_42
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 687
    .line 688
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderLogExtractUrls:I

    .line 689
    .line 690
    goto/16 :goto_7

    .line 691
    .line 692
    :sswitch_43
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 693
    .line 694
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseOriginalUrl:I

    .line 695
    .line 696
    goto/16 :goto_7

    .line 697
    .line 698
    :sswitch_44
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBufferPreload:I

    .line 699
    .line 700
    goto/16 :goto_7

    .line 701
    .line 702
    :sswitch_45
    if-lez p2, :cond_19

    .line 703
    .line 704
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 705
    .line 706
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedPredict:I

    .line 707
    .line 708
    goto/16 :goto_7

    .line 709
    .line 710
    :sswitch_46
    if-lez p2, :cond_19

    .line 711
    .line 712
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 713
    .line 714
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketRecvBufferSize:I

    .line 715
    .line 716
    goto/16 :goto_7

    .line 717
    .line 718
    :sswitch_47
    if-ltz p2, :cond_19

    .line 719
    .line 720
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 721
    .line 722
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEarlyData:I

    .line 723
    .line 724
    goto/16 :goto_7

    .line 725
    .line 726
    :sswitch_48
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 727
    .line 728
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheNum:I

    .line 729
    .line 730
    goto/16 :goto_7

    .line 731
    .line 732
    :sswitch_49
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 733
    .line 734
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheSize:I

    .line 735
    .line 736
    goto/16 :goto_7

    .line 737
    .line 738
    :sswitch_4a
    if-lez p2, :cond_19

    .line 739
    .line 740
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 741
    .line 742
    int-to-long v0, p2

    .line 743
    iput-wide v0, p1, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 744
    .line 745
    goto/16 :goto_7

    .line 746
    .line 747
    :sswitch_4b
    if-lez p2, :cond_19

    .line 748
    .line 749
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 750
    .line 751
    int-to-long v0, p2

    .line 752
    iput-wide v0, p1, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 753
    .line 754
    goto/16 :goto_7

    .line 755
    .line 756
    :sswitch_4c
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableSplitPreload:I

    .line 757
    .line 758
    goto/16 :goto_7

    .line 759
    .line 760
    :sswitch_4d
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 761
    .line 762
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDidConfigMdlV2:Z

    .line 763
    .line 764
    goto/16 :goto_7

    .line 765
    .line 766
    :sswitch_4e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 767
    .line 768
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOwnVDPPreloadNotify:I

    .line 769
    .line 770
    goto/16 :goto_7

    .line 771
    .line 772
    :sswitch_4f
    const-string/jumbo p1, "strategy_center"

    .line 773
    .line 774
    .line 775
    invoke-static {p1}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 776
    .line 777
    .line 778
    move-result p1

    .line 779
    if-eqz p1, :cond_19

    .line 780
    .line 781
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 782
    .line 783
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    .line 784
    .line 785
    goto/16 :goto_7

    .line 786
    .line 787
    :sswitch_50
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 788
    .line 789
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockHostIpErrCount:I

    .line 790
    .line 791
    goto/16 :goto_7

    .line 792
    .line 793
    :sswitch_51
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 794
    .line 795
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMinAllowSpeed:I

    .line 796
    .line 797
    goto/16 :goto_7

    .line 798
    .line 799
    :sswitch_52
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 800
    .line 801
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileExtendSizeKB:I

    .line 802
    .line 803
    goto/16 :goto_7

    .line 804
    .line 805
    :sswitch_53
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 806
    .line 807
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxAliveHostNum:I

    .line 808
    .line 809
    goto/16 :goto_7

    .line 810
    .line 811
    :sswitch_54
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 812
    .line 813
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PFirstRangeLoaderType:I

    .line 814
    .line 815
    goto/16 :goto_7

    .line 816
    .line 817
    :sswitch_55
    invoke-static {v2, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 818
    .line 819
    .line 820
    goto/16 :goto_7

    .line 821
    .line 822
    :sswitch_56
    const/16 p1, 0xa

    .line 823
    .line 824
    invoke-static {p1, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_7

    .line 828
    .line 829
    :sswitch_57
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 830
    .line 831
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxSocketReuseCount:I

    .line 832
    .line 833
    goto/16 :goto_7

    .line 834
    .line 835
    :sswitch_58
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 836
    .line 837
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketInitialTimeout:I

    .line 838
    .line 839
    goto/16 :goto_7

    .line 840
    .line 841
    :sswitch_59
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 842
    .line 843
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDynamicTimeout:I

    .line 844
    .line 845
    goto/16 :goto_7

    .line 846
    .line 847
    :sswitch_5a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 848
    .line 849
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PPreDownPeerCount:I

    .line 850
    .line 851
    goto/16 :goto_7

    .line 852
    .line 853
    :sswitch_5b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 854
    .line 855
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderSeek:I

    .line 856
    .line 857
    goto/16 :goto_7

    .line 858
    .line 859
    :sswitch_5c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 860
    .line 861
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCacheReqRange:I

    .line 862
    .line 863
    goto/16 :goto_7

    .line 864
    .line 865
    :sswitch_5d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 866
    .line 867
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsAllowTryTheLastUrl:I

    .line 868
    .line 869
    goto/16 :goto_7

    .line 870
    .line 871
    :sswitch_5e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 872
    .line 873
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFirstRangeLeftThreshold:I

    .line 874
    .line 875
    goto/16 :goto_7

    .line 876
    .line 877
    :sswitch_5f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 878
    .line 879
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSChedulerBlockDurationMs:I

    .line 880
    .line 881
    goto/16 :goto_7

    .line 882
    .line 883
    :sswitch_60
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 884
    .line 885
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockErrCount:I

    .line 886
    .line 887
    goto/16 :goto_7

    .line 888
    .line 889
    :sswitch_61
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 890
    .line 891
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockAllNetErr:I

    .line 892
    .line 893
    goto/16 :goto_7

    .line 894
    .line 895
    :sswitch_62
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 896
    .line 897
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetScheduler:I

    .line 898
    .line 899
    goto/16 :goto_7

    .line 900
    .line 901
    :sswitch_63
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 902
    .line 903
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayLog:I

    .line 904
    .line 905
    goto/16 :goto_7

    .line 906
    .line 907
    :sswitch_64
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 908
    .line 909
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2PPreDown:I

    .line 910
    .line 911
    goto/16 :goto_7

    .line 912
    .line 913
    :sswitch_65
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 914
    .line 915
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mControlCDNRangeType:I

    .line 916
    .line 917
    goto/16 :goto_7

    .line 918
    .line 919
    :sswitch_66
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 920
    .line 921
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayInfoCache:I

    .line 922
    .line 923
    goto/16 :goto_7

    .line 924
    .line 925
    :sswitch_67
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 926
    .line 927
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolGrowBlockCount:I

    .line 928
    .line 929
    goto/16 :goto_7

    .line 930
    .line 931
    :sswitch_68
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 932
    .line 933
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolResidentSize:I

    .line 934
    .line 935
    goto/16 :goto_7

    .line 936
    .line 937
    :sswitch_69
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 938
    .line 939
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolBlockSize:I

    .line 940
    .line 941
    goto/16 :goto_7

    .line 942
    .line 943
    :sswitch_6a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 944
    .line 945
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNewBufferpool:I

    .line 946
    .line 947
    goto/16 :goto_7

    .line 948
    .line 949
    :sswitch_6b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 950
    .line 951
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionTimeout:I

    .line 952
    .line 953
    goto/16 :goto_7

    .line 954
    .line 955
    :sswitch_6c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 956
    .line 957
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLazyBufferpool:I

    .line 958
    .line 959
    goto/16 :goto_7

    .line 960
    .line 961
    :sswitch_6d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 962
    .line 963
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForbidByPassCookie:I

    .line 964
    .line 965
    goto/16 :goto_7

    .line 966
    .line 967
    :sswitch_6e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 968
    .line 969
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV4Num:I

    .line 970
    .line 971
    goto/16 :goto_7

    .line 972
    .line 973
    :sswitch_6f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 974
    .line 975
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV6Num:I

    .line 976
    .line 977
    goto/16 :goto_7

    .line 978
    .line 979
    :sswitch_70
    if-eqz p2, :cond_5

    .line 980
    .line 981
    goto :goto_2

    .line 982
    :cond_5
    move v0, v7

    .line 983
    :goto_2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mAudioPreloadFirst:Z

    .line 984
    .line 985
    goto/16 :goto_7

    .line 986
    .line 987
    :sswitch_71
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedSpeedTestByTimeInternal:I

    .line 988
    .line 989
    goto/16 :goto_7

    .line 990
    .line 991
    :sswitch_72
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 992
    .line 993
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckPreloadLevel:I

    .line 994
    .line 995
    goto/16 :goto_7

    .line 996
    .line 997
    :sswitch_73
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 998
    .line 999
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mXYLibValue:I

    .line 1000
    .line 1001
    goto/16 :goto_7

    .line 1002
    .line 1003
    :sswitch_74
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1004
    .line 1005
    if-eqz p1, :cond_19

    .line 1006
    .line 1007
    const/16 v0, 0x1c3b

    .line 1008
    .line 1009
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_7

    .line 1013
    .line 1014
    :sswitch_75
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1015
    .line 1016
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSyncDnsForPcdn:I

    .line 1017
    .line 1018
    goto/16 :goto_7

    .line 1019
    .line 1020
    :sswitch_76
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1021
    .line 1022
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketSendBufferKB:I

    .line 1023
    .line 1024
    goto/16 :goto_7

    .line 1025
    .line 1026
    :sswitch_77
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1027
    .line 1028
    if-eqz p1, :cond_19

    .line 1029
    .line 1030
    const/16 v0, 0x1c33

    .line 1031
    .line 1032
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1033
    .line 1034
    .line 1035
    goto/16 :goto_7

    .line 1036
    .line 1037
    :sswitch_78
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1038
    .line 1039
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNextDownloadThreshold:I

    .line 1040
    .line 1041
    goto/16 :goto_7

    .line 1042
    .line 1043
    :sswitch_79
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1044
    .line 1045
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAccessCheckLevel:I

    .line 1046
    .line 1047
    goto/16 :goto_7

    .line 1048
    .line 1049
    :sswitch_7a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1050
    .line 1051
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderPreempt:I

    .line 1052
    .line 1053
    goto/16 :goto_7

    .line 1054
    .line 1055
    :sswitch_7b
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableReportSpeed:I

    .line 1056
    .line 1057
    goto/16 :goto_7

    .line 1058
    .line 1059
    :sswitch_7c
    if-ne p2, v0, :cond_6

    .line 1060
    .line 1061
    goto :goto_3

    .line 1062
    :cond_6
    move v0, v7

    .line 1063
    :goto_3
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    .line 1064
    .line 1065
    goto/16 :goto_7

    .line 1066
    .line 1067
    :sswitch_7d
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableFirstNativeMDL:I

    .line 1068
    .line 1069
    goto/16 :goto_7

    .line 1070
    .line 1071
    :sswitch_7e
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNetworkChangedListen:I

    .line 1072
    .line 1073
    goto/16 :goto_7

    .line 1074
    .line 1075
    :sswitch_7f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1076
    .line 1077
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseFileExtendLoaderBuffer:I

    .line 1078
    .line 1079
    goto/16 :goto_7

    .line 1080
    .line 1081
    :sswitch_80
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1082
    .line 1083
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileRingBuffer:I

    .line 1084
    .line 1085
    goto/16 :goto_7

    .line 1086
    .line 1087
    :sswitch_81
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1088
    .line 1089
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileCacheV2:I

    .line 1090
    .line 1091
    goto/16 :goto_7

    .line 1092
    .line 1093
    :sswitch_82
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1094
    .line 1095
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRingBufferSizeKB:I

    .line 1096
    .line 1097
    goto/16 :goto_7

    .line 1098
    .line 1099
    :sswitch_83
    const-string p1, "native_mdl"

    .line 1100
    .line 1101
    invoke-static {p1}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result p1

    .line 1105
    if-nez p1, :cond_7

    .line 1106
    .line 1107
    goto/16 :goto_7

    .line 1108
    .line 1109
    :cond_7
    if-ne p2, v0, :cond_8

    .line 1110
    .line 1111
    goto :goto_4

    .line 1112
    :cond_8
    move v0, v7

    .line 1113
    :goto_4
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 1114
    .line 1115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    .line 1119
    .line 1120
    const-string p2, "config DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE: "

    .line 1121
    .line 1122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z

    .line 1126
    .line 1127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p1

    .line 1134
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_7

    .line 1138
    .line 1139
    :sswitch_84
    if-eqz p2, :cond_9

    .line 1140
    .line 1141
    goto :goto_5

    .line 1142
    :cond_9
    move v0, v7

    .line 1143
    :goto_5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    .line 1144
    .line 1145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    const-string/jumbo p2, "setIntValue: mInvalidMdlProcotol: "

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    .line 1157
    .line 1158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object p1

    .line 1165
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    goto/16 :goto_7

    .line 1169
    .line 1170
    :sswitch_85
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1171
    .line 1172
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreconnectNum:I

    .line 1173
    .line 1174
    goto/16 :goto_7

    .line 1175
    .line 1176
    :sswitch_86
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1177
    .line 1178
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreconnect:I

    .line 1179
    .line 1180
    goto/16 :goto_7

    .line 1181
    .line 1182
    :sswitch_87
    iget p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableNetworkChangedListen:I

    .line 1183
    .line 1184
    if-ne p1, v0, :cond_19

    .line 1185
    .line 1186
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearNetinfoCache()V

    .line 1187
    .line 1188
    .line 1189
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1190
    .line 1191
    if-eqz p1, :cond_19

    .line 1192
    .line 1193
    const/16 p2, 0x1c31

    .line 1194
    .line 1195
    invoke-virtual {p1, p2, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1196
    .line 1197
    .line 1198
    goto/16 :goto_7

    .line 1199
    .line 1200
    :sswitch_88
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1201
    .line 1202
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveRecvDataTimeout:I

    .line 1203
    .line 1204
    goto/16 :goto_7

    .line 1205
    .line 1206
    :sswitch_89
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1207
    .line 1208
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAlogEnable:I

    .line 1209
    .line 1210
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1211
    .line 1212
    if-eqz p1, :cond_19

    .line 1213
    .line 1214
    const/16 v0, 0x1c39

    .line 1215
    .line 1216
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1217
    .line 1218
    .line 1219
    goto/16 :goto_7

    .line 1220
    .line 1221
    :sswitch_8a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1222
    .line 1223
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileDownloadAllow:I

    .line 1224
    .line 1225
    goto/16 :goto_7

    .line 1226
    .line 1227
    :sswitch_8b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1228
    .line 1229
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileUploadAllow:I

    .line 1230
    .line 1231
    goto/16 :goto_7

    .line 1232
    .line 1233
    :sswitch_8c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1234
    .line 1235
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWaitP2pReadyThreshold:I

    .line 1236
    .line 1237
    goto/16 :goto_7

    .line 1238
    .line 1239
    :sswitch_8d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1240
    .line 1241
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMaxTrySwitchP2pTimes:I

    .line 1242
    .line 1243
    goto/16 :goto_7

    .line 1244
    .line 1245
    :sswitch_8e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1246
    .line 1247
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdP2pToHttp:I

    .line 1248
    .line 1249
    goto/16 :goto_7

    .line 1250
    .line 1251
    :sswitch_8f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1252
    .line 1253
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdHttpToP2p:I

    .line 1254
    .line 1255
    goto/16 :goto_7

    .line 1256
    .line 1257
    :sswitch_90
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1258
    .line 1259
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWatchDurationThreshold:I

    .line 1260
    .line 1261
    goto/16 :goto_7

    .line 1262
    .line 1263
    :sswitch_91
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1264
    .line 1265
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderEnable:I

    .line 1266
    .line 1267
    goto/16 :goto_7

    .line 1268
    .line 1269
    :sswitch_92
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1270
    .line 1271
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    .line 1272
    .line 1273
    goto/16 :goto_7

    .line 1274
    .line 1275
    :sswitch_93
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1276
    .line 1277
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveP2pAllow:I

    .line 1278
    .line 1279
    goto/16 :goto_7

    .line 1280
    .line 1281
    :sswitch_94
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1282
    .line 1283
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEventInfo:I

    .line 1284
    .line 1285
    goto/16 :goto_7

    .line 1286
    .line 1287
    :sswitch_95
    if-lez p2, :cond_19

    .line 1288
    .line 1289
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1290
    .line 1291
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDeviceScoreEx:I

    .line 1292
    .line 1293
    goto/16 :goto_7

    .line 1294
    .line 1295
    :sswitch_96
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1296
    .line 1297
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUseNewSpeedTestForSingle:I

    .line 1298
    .line 1299
    goto/16 :goto_7

    .line 1300
    .line 1301
    :sswitch_97
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 1302
    .line 1303
    .line 1304
    move-result-object p1

    .line 1305
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setEnable(I)V

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_7

    .line 1309
    .line 1310
    :sswitch_98
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1311
    .line 1312
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGlobalSpeedSampleInterval:I

    .line 1313
    .line 1314
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1315
    .line 1316
    if-eqz p1, :cond_19

    .line 1317
    .line 1318
    const/16 v0, 0x1cca

    .line 1319
    .line 1320
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1321
    .line 1322
    .line 1323
    goto/16 :goto_7

    .line 1324
    .line 1325
    :sswitch_99
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1326
    .line 1327
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedSampleInterval:I

    .line 1328
    .line 1329
    goto/16 :goto_7

    .line 1330
    .line 1331
    :sswitch_9a
    invoke-static {v6, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 1332
    .line 1333
    .line 1334
    goto/16 :goto_7

    .line 1335
    .line 1336
    :sswitch_9b
    const/4 p1, 0x6

    .line 1337
    invoke-static {p1, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 1338
    .line 1339
    .line 1340
    goto/16 :goto_7

    .line 1341
    .line 1342
    :sswitch_9c
    invoke-static {v5, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 1343
    .line 1344
    .line 1345
    goto/16 :goto_7

    .line 1346
    .line 1347
    :sswitch_9d
    invoke-static {v4, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_7

    .line 1351
    .line 1352
    :sswitch_9e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1353
    .line 1354
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadWaitListType:I

    .line 1355
    .line 1356
    goto/16 :goto_7

    .line 1357
    .line 1358
    :sswitch_9f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1359
    .line 1360
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsCloseFileCache:I

    .line 1361
    .line 1362
    goto/16 :goto_7

    .line 1363
    .line 1364
    :sswitch_a0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1365
    .line 1366
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoaderCheckWithNetworkType:I

    .line 1367
    .line 1368
    goto/16 :goto_7

    .line 1369
    .line 1370
    :sswitch_a1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1371
    .line 1372
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoader:I

    .line 1373
    .line 1374
    goto/16 :goto_7

    .line 1375
    .line 1376
    :sswitch_a2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1377
    .line 1378
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTTNetLoaderCronetBufSizeKB:I

    .line 1379
    .line 1380
    goto/16 :goto_7

    .line 1381
    .line 1382
    :sswitch_a3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1383
    .line 1384
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTNetLoader:I

    .line 1385
    .line 1386
    goto/16 :goto_7

    .line 1387
    .line 1388
    :sswitch_a4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1389
    .line 1390
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDownloaderLog:I

    .line 1391
    .line 1392
    goto/16 :goto_7

    .line 1393
    .line 1394
    :sswitch_a5
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadPreConnect:I

    .line 1395
    .line 1396
    goto/16 :goto_7

    .line 1397
    .line 1398
    :sswitch_a6
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mFloatSize:I

    .line 1399
    .line 1400
    goto/16 :goto_7

    .line 1401
    .line 1402
    :sswitch_a7
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTaskIgnorePlayerStall:I

    .line 1403
    .line 1404
    goto/16 :goto_7

    .line 1405
    .line 1406
    :sswitch_a8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    const-string v0, "set write file notify intervalMS "

    .line 1412
    .line 1413
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object p1

    .line 1423
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1427
    .line 1428
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mWriteFileNotifyIntervalMS:I

    .line 1429
    .line 1430
    goto/16 :goto_7

    .line 1431
    .line 1432
    :pswitch_e
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 1433
    .line 1434
    goto/16 :goto_7

    .line 1435
    .line 1436
    :pswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1437
    .line 1438
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTestSpeedTypeVersion:I

    .line 1439
    .line 1440
    goto/16 :goto_7

    .line 1441
    .line 1442
    :pswitch_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1443
    .line 1444
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckSumLevel:I

    .line 1445
    .line 1446
    goto/16 :goto_7

    .line 1447
    .line 1448
    :pswitch_11
    if-lt p2, v7, :cond_a

    .line 1449
    .line 1450
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1451
    .line 1452
    iget v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    .line 1453
    .line 1454
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 1455
    .line 1456
    iput v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    .line 1457
    .line 1458
    goto :goto_6

    .line 1459
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1460
    .line 1461
    iget v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    .line 1462
    .line 1463
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 1464
    .line 1465
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    .line 1466
    .line 1467
    :goto_6
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlPreloadStrategy:I

    .line 1468
    .line 1469
    const/16 p1, 0xc8

    .line 1470
    .line 1471
    if-ne p2, p1, :cond_19

    .line 1472
    .line 1473
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1474
    .line 1475
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    .line 1476
    .line 1477
    goto :goto_7

    .line 1478
    :pswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1479
    .line 1480
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadParallelNum:I

    .line 1481
    .line 1482
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 1483
    .line 1484
    if-eqz p1, :cond_19

    .line 1485
    .line 1486
    const/16 v0, 0x66

    .line 1487
    .line 1488
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 1489
    .line 1490
    .line 1491
    goto :goto_7

    .line 1492
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1493
    .line 1494
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSessionReuse:I

    .line 1495
    .line 1496
    goto :goto_7

    .line 1497
    :cond_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1498
    .line 1499
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxTlsVersion:I

    .line 1500
    .line 1501
    goto :goto_7

    .line 1502
    :cond_d
    iput p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeatInterval:I

    .line 1503
    .line 1504
    goto :goto_7

    .line 1505
    :cond_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1506
    .line 1507
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreloadReUse:I

    .line 1508
    .line 1509
    goto :goto_7

    .line 1510
    :cond_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1511
    .line 1512
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMaxCacheAgeForAllDir:I

    .line 1513
    .line 1514
    goto :goto_7

    .line 1515
    :cond_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1516
    .line 1517
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheAge:I

    .line 1518
    .line 1519
    goto :goto_7

    .line 1520
    :cond_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1521
    .line 1522
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketIdleTimeOut:I

    .line 1523
    .line 1524
    goto :goto_7

    .line 1525
    :cond_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1526
    .line 1527
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSocketReuse:I

    .line 1528
    .line 1529
    goto :goto_7

    .line 1530
    :cond_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1531
    .line 1532
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    .line 1533
    .line 1534
    goto :goto_7

    .line 1535
    :cond_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1536
    .line 1537
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 1538
    .line 1539
    const-string p1, "pcdn"

    .line 1540
    .line 1541
    invoke-static {p1}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result p1

    .line 1545
    if-eqz p1, :cond_19

    .line 1546
    .line 1547
    if-lez p2, :cond_19

    .line 1548
    .line 1549
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedDLLoadP2PLib:I

    .line 1550
    .line 1551
    goto :goto_7

    .line 1552
    :cond_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1553
    .line 1554
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTryCount:I

    .line 1555
    .line 1556
    goto :goto_7

    .line 1557
    :cond_16
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1558
    .line 1559
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOpenTimeOut:I

    .line 1560
    .line 1561
    goto :goto_7

    .line 1562
    :cond_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1563
    .line 1564
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRWTimeOut:I

    .line 1565
    .line 1566
    goto :goto_7

    .line 1567
    :cond_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 1568
    .line 1569
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    .line 1571
    :cond_19
    :goto_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 1572
    .line 1573
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 1574
    .line 1575
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 1576
    .line 1577
    .line 1578
    goto :goto_9

    .line 1579
    :goto_8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    .line 1581
    .line 1582
    goto :goto_7

    .line 1583
    :goto_9
    return-void

    .line 1584
    :goto_a
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 1585
    .line 1586
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 1587
    .line 1588
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 1589
    .line 1590
    .line 1591
    throw p1

    .line 1592
    nop

    .line 1593
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_a8
        0x12 -> :sswitch_a7
        0x13 -> :sswitch_a6
        0x14 -> :sswitch_a5
        0x15 -> :sswitch_a4
        0x16 -> :sswitch_a3
        0x17 -> :sswitch_a2
        0x18 -> :sswitch_a1
        0x19 -> :sswitch_a0
        0x32 -> :sswitch_9f
        0x50 -> :sswitch_9e
        0x67 -> :sswitch_9d
        0x68 -> :sswitch_9c
        0x69 -> :sswitch_9b
        0x6a -> :sswitch_9a
        0x70 -> :sswitch_99
        0x71 -> :sswitch_98
        0x77 -> :sswitch_97
        0x79 -> :sswitch_96
        0x7b -> :sswitch_95
        0xc8 -> :sswitch_94
        0x1f4 -> :sswitch_93
        0x1f5 -> :sswitch_92
        0x1f6 -> :sswitch_91
        0x1f9 -> :sswitch_90
        0x1fa -> :sswitch_8f
        0x1fb -> :sswitch_8e
        0x1fc -> :sswitch_8d
        0x1fd -> :sswitch_8c
        0x1fe -> :sswitch_8b
        0x1ff -> :sswitch_8a
        0x200 -> :sswitch_89
        0x201 -> :sswitch_88
        0x3e8 -> :sswitch_87
        0x3e9 -> :sswitch_86
        0x3ea -> :sswitch_85
        0x3ec -> :sswitch_84
        0x3ed -> :sswitch_83
        0x3ee -> :sswitch_82
        0x3ef -> :sswitch_81
        0x3f1 -> :sswitch_80
        0x3f2 -> :sswitch_7f
        0x3f3 -> :sswitch_7e
        0x3f4 -> :sswitch_7d
        0x3f5 -> :sswitch_7c
        0x44c -> :sswitch_7b
        0x44d -> :sswitch_7a
        0x44e -> :sswitch_79
        0x44f -> :sswitch_78
        0x450 -> :sswitch_77
        0x451 -> :sswitch_76
        0x454 -> :sswitch_75
        0x455 -> :sswitch_74
        0x456 -> :sswitch_73
        0x457 -> :sswitch_72
        0x458 -> :sswitch_71
        0x459 -> :sswitch_70
        0x45b -> :sswitch_6f
        0x45c -> :sswitch_6e
        0x45d -> :sswitch_6d
        0x45e -> :sswitch_6c
        0x45f -> :sswitch_6b
        0x460 -> :sswitch_6a
        0x461 -> :sswitch_69
        0x462 -> :sswitch_68
        0x463 -> :sswitch_67
        0x464 -> :sswitch_66
        0x465 -> :sswitch_65
        0x466 -> :sswitch_64
        0x467 -> :sswitch_63
        0x468 -> :sswitch_62
        0x469 -> :sswitch_61
        0x46a -> :sswitch_60
        0x46b -> :sswitch_5f
        0x46c -> :sswitch_5e
        0x46d -> :sswitch_5d
        0x46e -> :sswitch_5c
        0x46f -> :sswitch_5b
        0x470 -> :sswitch_5a
        0x471 -> :sswitch_59
        0x472 -> :sswitch_58
        0x473 -> :sswitch_57
        0x474 -> :sswitch_56
        0x475 -> :sswitch_55
        0x477 -> :sswitch_54
        0x479 -> :sswitch_53
        0x47a -> :sswitch_52
        0x47b -> :sswitch_51
        0x47c -> :sswitch_50
        0x47e -> :sswitch_4f
        0x47f -> :sswitch_4e
        0x482 -> :sswitch_4d
        0x483 -> :sswitch_4c
        0x484 -> :sswitch_4b
        0x485 -> :sswitch_4a
        0x486 -> :sswitch_49
        0x487 -> :sswitch_48
        0x488 -> :sswitch_47
        0x489 -> :sswitch_46
        0x48a -> :sswitch_45
        0x48b -> :sswitch_44
        0x48c -> :sswitch_43
        0x48e -> :sswitch_42
        0x48f -> :sswitch_41
        0x490 -> :sswitch_40
        0x491 -> :sswitch_3f
        0x492 -> :sswitch_3e
        0x493 -> :sswitch_3d
        0x494 -> :sswitch_3c
        0x5dd -> :sswitch_3b
        0x5df -> :sswitch_3a
        0x5e0 -> :sswitch_39
        0x5e1 -> :sswitch_38
        0x5e9 -> :sswitch_37
        0x5ea -> :sswitch_36
        0x6a5 -> :sswitch_35
        0x7d0 -> :sswitch_34
        0x7d1 -> :sswitch_33
        0x7d2 -> :sswitch_32
        0x7d3 -> :sswitch_31
        0x7d4 -> :sswitch_30
        0x7d5 -> :sswitch_2f
        0x7d6 -> :sswitch_2e
        0x7d8 -> :sswitch_2d
        0x7d9 -> :sswitch_2c
        0x7da -> :sswitch_2b
        0x7db -> :sswitch_2a
        0x7dc -> :sswitch_29
        0x7dd -> :sswitch_28
        0x7de -> :sswitch_27
        0x7df -> :sswitch_26
        0x7e0 -> :sswitch_25
        0x7e1 -> :sswitch_24
        0x7e2 -> :sswitch_23
        0x7e3 -> :sswitch_22
        0x7e4 -> :sswitch_21
        0x7e5 -> :sswitch_21
        0x7e6 -> :sswitch_20
        0x7e7 -> :sswitch_1f
        0x7e8 -> :sswitch_1e
        0x7e9 -> :sswitch_1d
        0x7ea -> :sswitch_1c
        0x7eb -> :sswitch_1b
        0x7ec -> :sswitch_1a
        0x7ef -> :sswitch_19
        0x7f0 -> :sswitch_18
        0x7f1 -> :sswitch_17
        0x7f2 -> :sswitch_16
        0x7f3 -> :sswitch_15
        0x7f4 -> :sswitch_14
        0x7f5 -> :sswitch_13
        0x834 -> :sswitch_12
        0x836 -> :sswitch_11
        0x838 -> :sswitch_10
        0x2328 -> :sswitch_f
        0x2329 -> :sswitch_e
        0x2330 -> :sswitch_d
        0x2335 -> :sswitch_c
        0x2336 -> :sswitch_b
        0x2338 -> :sswitch_a
        0x2339 -> :sswitch_9
        0x233a -> :sswitch_8
        0x233b -> :sswitch_7
        0x233d -> :sswitch_6
        0x233e -> :sswitch_5
        0x233f -> :sswitch_4
        0x2346 -> :sswitch_3
        0x2ee1 -> :sswitch_2
        0x2ee2 -> :sswitch_1
        0x2ee4 -> :sswitch_0
    .end sparse-switch

    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    :pswitch_data_2
    .packed-switch 0x3f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    :pswitch_data_3
    .packed-switch 0x5a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIntValueSync(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 9
    .line 10
    const-string v1, ", value = "

    .line 11
    .line 12
    const-string v2, "DataLoaderHelper"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 17
    .line 18
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "setIntValueSync failed, key = "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v3, "setIntValueSync key = "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x837

    .line 79
    .line 80
    if-eq p1, v0, :cond_2

    .line 81
    .line 82
    const/16 v0, 0x839

    .line 83
    .line 84
    if-eq p1, v0, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    if-ltz p2, :cond_3

    .line 88
    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 90
    .line 91
    const/16 v0, 0x2afd

    .line 92
    .line 93
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-exception p1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    if-ltz p2, :cond_3

    .line 102
    .line 103
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 104
    .line 105
    const/16 v0, 0x2afb

    .line 106
    .line 107
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 115
    .line 116
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 123
    .line 124
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :goto_3
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/DataLoaderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->setListener(Lcom/ss/ttvideoengine/DataLoaderListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoadProxy(Lcom/ss/ttvideoengine/LibraryLoaderProxy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 15
    .line 16
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 23
    .line 24
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setLoaderEventListener(Lcom/ss/mediakit/medialoader/LoaderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setEventListener(Lcom/ss/mediakit/medialoader/LoaderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 25
    .line 26
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setLongValue(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "setLongValue key = "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", value = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "DataLoaderHelper"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x3e

    .line 40
    .line 41
    if-eq p1, v0, :cond_4

    .line 42
    .line 43
    const/16 v0, 0x476

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    const/16 v0, 0x478

    .line 48
    .line 49
    if-eq p1, v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0x480

    .line 52
    .line 53
    if-eq p1, v0, :cond_1

    .line 54
    .line 55
    const/16 v0, 0x481

    .line 56
    .line 57
    if-eq p1, v0, :cond_0

    .line 58
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_0
    const/16 v0, 0x1caa

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_1
    const/16 v0, 0x1c2f

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_2
    const/16 v0, 0x1c2e

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_3
    const/16 v0, 0x1c2d

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_4
    const/16 v0, 0x1c2c

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_5
    const/16 v0, 0x1c2b

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_6
    const/16 v0, 0x1c2a

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 85
    .line 86
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorMinAllowLoadSize:J

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_4

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 92
    .line 93
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorTimeInternal:J

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 97
    .line 98
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mConnectPoolStragetyValue:J

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 102
    .line 103
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PStragetyLevel:J

    .line 104
    .line 105
    :goto_0
    const/4 v0, -0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const/16 v0, 0x44c

    .line 108
    .line 109
    :goto_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v0, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setLongValue(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 117
    .line 118
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v2, "setLongValue failed, key: "

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, ", value: "

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_3
    return-void

    .line 155
    :goto_4
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 156
    .line 157
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPlayInfo(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "DataLoaderHelper"

    .line 6
    .line 7
    const-string p2, "dataloader not started, not allow set play info"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 14
    .line 15
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setPlayInfoOnlyForPreload(ILjava/lang/String;Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    const/16 p1, 0x1caa

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    const/16 p1, 0x1c2f

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    const/16 p1, 0x1c2e

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    const/16 p1, 0x1c2d

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const/16 p1, 0x1c2c

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    const/16 p1, 0x1c2b

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    const/16 p1, 0x1c2a

    .line 47
    .line 48
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 49
    .line 50
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setInt64ValueByStrKey(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 54
    .line 55
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :catch_0
    move-exception p1

    .line 64
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    return-void

    .line 69
    :goto_3
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 70
    .line 71
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlayInfoOnlyForPreload(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "DataLoaderHelper"

    .line 6
    .line 7
    const-string p2, "dataloader not started, not allow set play info"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableBufferPreload:I

    .line 14
    .line 15
    if-gtz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 19
    .line 20
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadUtil:Lcom/ss/ttvideoengine/preload/PreloadUtil;

    .line 26
    .line 27
    iget-wide v0, v2, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v0, v0, v3

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iget-wide v0, v2, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 36
    .line 37
    cmp-long v0, v0, v3

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    move v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move-object v5, p3

    .line 44
    move-wide v6, p4

    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->updatePlayInfo(ILjava/lang/String;Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 49
    .line 50
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setPlayTaskProgress(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPreloadLogLevel(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    :cond_0
    const/4 v0, 0x4

    .line 6
    if-lt p1, v0, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x5

    .line 9
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setLogLevel(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setProbeIntervalMS(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProbeType(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProtectCacheDirsAvoidClear([Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    const-string v1, "set protect dirs avoid clear when use clear interface"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->setProtectCacheDirs([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 21
    .line 22
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 30
    .line 31
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public setReportLogEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mReportLogEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 11
    .line 12
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setStringValue(ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setStringValue key = "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", value = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "DataLoaderHelper"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 33
    .line 34
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 37
    .line 38
    .line 39
    const-string v0, ","

    .line 40
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 47
    .line 48
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileKeyRule:Ljava/lang/String;

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :sswitch_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    array-length p2, p1

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-ge v0, p2, :cond_3

    .line 65
    .line 66
    aget-object v1, p1, v0

    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNotifyNetErrors:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :sswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 91
    .line 92
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PConfigStr:Ljava/lang/String;

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 97
    .line 98
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketTraingCenterConfigStr:Ljava/lang/String;

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :sswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 103
    .line 104
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyToken:Ljava/lang/String;

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :sswitch_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 109
    .line 110
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyDomain:Ljava/lang/String;

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 115
    .line 116
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDomains:Ljava/lang/String;

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :sswitch_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 121
    .line 122
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForesightDomain:Ljava/lang/String;

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :sswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 127
    .line 128
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDmDomain:Ljava/lang/String;

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :sswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 133
    .line 134
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSettingsDomain:Ljava/lang/String;

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 139
    .line 140
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpExtGlobalInfo:Ljava/lang/String;

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :sswitch_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 145
    .line 146
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :sswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 151
    .line 152
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoStrategyConfig:Ljava/lang/String;

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :sswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 157
    .line 158
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlTTQuicHeOptsStr:Ljava/lang/String;

    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :sswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 163
    .line 164
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mN80OptsStr:Ljava/lang/String;

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :sswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 169
    .line 170
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileRingBufferOptStr:Ljava/lang/String;

    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :sswitch_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_2

    .line 179
    .line 180
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_1

    .line 189
    .line 190
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 191
    .line 192
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 201
    .line 202
    iget-object v3, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iput-object p1, v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 218
    .line 219
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string p2, "cur custom UA"

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 230
    .line 231
    iget-object p2, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :sswitch_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 245
    .line 246
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTemporaryOptStr:Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :sswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 250
    .line 251
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :sswitch_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 255
    .line 256
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedEngineSetting:Ljava/lang/String;

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :sswitch_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 260
    .line 261
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDynamicPreconnectConfigStr:Ljava/lang/String;

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :sswitch_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 265
    .line 266
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerConfigStr:Ljava/lang/String;

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :sswitch_16
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 270
    .line 271
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :sswitch_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 275
    .line 276
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :sswitch_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 280
    .line 281
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveContainerString:Ljava/lang/String;

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :sswitch_19
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 285
    .line 286
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownloadDir:Ljava/lang/String;

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :sswitch_1a
    const/16 p1, 0x9

    .line 290
    .line 291
    invoke-static {p1, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setStringValue(ILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :sswitch_1b
    const/16 p1, 0x8

    .line 296
    .line 297
    invoke-static {p1, p2}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setStringValue(ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :sswitch_1c
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 302
    .line 303
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    .line 304
    .line 305
    goto :goto_2

    .line 306
    :sswitch_1d
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 307
    .line 308
    iput-object p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .line 310
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 311
    .line 312
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 313
    .line 314
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :goto_3
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :goto_4
    return-void

    .line 323
    :goto_5
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 324
    .line 325
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 326
    .line 327
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 328
    .line 329
    .line 330
    throw p1

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0x66 -> :sswitch_1c
        0x6b -> :sswitch_1b
        0x6c -> :sswitch_1a
        0x6f -> :sswitch_19
        0x202 -> :sswitch_18
        0x452 -> :sswitch_17
        0x453 -> :sswitch_16
        0x47d -> :sswitch_15
        0x48d -> :sswitch_14
        0x495 -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5de -> :sswitch_11
        0x5e2 -> :sswitch_10
        0x5e3 -> :sswitch_10
        0x5e4 -> :sswitch_10
        0x5e6 -> :sswitch_f
        0x5e7 -> :sswitch_e
        0x5e8 -> :sswitch_d
        0x7d7 -> :sswitch_c
        0x7ed -> :sswitch_b
        0x835 -> :sswitch_a
        0x232a -> :sswitch_9
        0x232b -> :sswitch_8
        0x232c -> :sswitch_7
        0x232d -> :sswitch_6
        0x232e -> :sswitch_5
        0x232f -> :sswitch_4
        0x2332 -> :sswitch_3
        0x2334 -> :sswitch_2
        0x233c -> :sswitch_1
        0x2ee3 -> :sswitch_0
    .end sparse-switch
.end method

.method public setStringValueSync(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 16
    .line 17
    const-string v1, ", value = "

    .line 18
    .line 19
    const-string v2, "DataLoaderHelper"

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "setStringValueSync failed, key = "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v3, "setStringValueSync key = "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/16 v0, 0x7ee

    .line 86
    .line 87
    if-eq p1, v0, :cond_3

    .line 88
    .line 89
    const/16 v0, 0x83a

    .line 90
    .line 91
    if-eq p1, v0, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 95
    .line 96
    const/16 v0, 0x2afe

    .line 97
    .line 98
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setStringValue(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :catch_0
    move-exception p1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 107
    .line 108
    const/16 v0, 0x1d0d

    .line 109
    .line 110
    invoke-virtual {p1, v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setStringValue(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 114
    .line 115
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_2
    return-void

    .line 126
    :goto_3
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 127
    .line 128
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public setTaskConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setTaskEventListener(Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "DataLoaderHelper"

    .line 6
    .line 7
    const-string v0, "need start mdl first"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 14
    .line 15
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setTaskEventListener(Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setTestSpeedListener(Lcom/ss/ttvideoengine/TestSpeedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mTestSpeedListener:Lcom/ss/ttvideoengine/TestSpeedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 11
    .line 12
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const-string v1, "DataLoaderHelper"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :try_start_1
    const-string v0, "DataLoader has started not need start"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->enableMdlLockOptimizeV2:I

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 35
    .line 36
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_VOID:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->updateLockType(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDidConfigMdlV2:Z

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isMDLV2Enable()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNeedMDLLoadMDLV2Lib:Z

    .line 57
    .line 58
    iput v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlV2:I

    .line 59
    .line 60
    const-string v0, "Enable MDLV2, config by vod settings mdlv2_enable"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->Initializing:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->initInternal()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_13

    .line 78
    .line 79
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mExecuteTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 80
    .line 81
    const-wide/16 v3, 0x4

    .line 82
    .line 83
    invoke-virtual {v0, v3, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->setMaxCount(J)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mPreloadTasks:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;

    .line 87
    .line 88
    const-wide/16 v3, 0x14

    .line 89
    .line 90
    invoke-virtual {v0, v3, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->setMaxCount(J)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->getDefaultonfigure()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 102
    .line 103
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_3
    sget-object v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppChannel:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    const-string v3, "app_channel"

    .line 117
    .line 118
    sget-object v4, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppChannel:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getAppName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_5

    .line 135
    .line 136
    const-string v3, "app_name"

    .line 137
    .line 138
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getAppName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getDeviceID()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_6

    .line 154
    .line 155
    const-string v3, "device_id"

    .line 156
    .line 157
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getDeviceID()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    :cond_6
    sget-object v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_7

    .line 171
    .line 172
    const-string v3, "app_version"

    .line 173
    .line 174
    sget-object v4, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getAppID()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const-string v4, "app_id"

    .line 188
    .line 189
    if-nez v3, :cond_8

    .line 190
    .line 191
    :try_start_4
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getAppID()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_9

    .line 207
    .line 208
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 209
    .line 210
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAppInfo:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 225
    .line 226
    iput v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportTaskLog:I

    .line 227
    .line 228
    :cond_a
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mCloseLocalServer:Z

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 233
    .line 234
    iput v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseLocalServer:I

    .line 235
    .line 236
    :cond_b
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 237
    .line 238
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->changeConfigWithPermission(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 242
    .line 243
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 244
    .line 245
    invoke-virtual {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setConfigure(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 249
    .line 250
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 251
    .line 252
    iget-object v3, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->setHLSCacheDir(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->start()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-ltz v0, :cond_12

    .line 264
    .line 265
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->startVCTrace()V

    .line 266
    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v3, "[preload] preload strategy "

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlPreloadStrategy:I

    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->tryStartStrategyCenter()V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 294
    .line 295
    const/16 v3, 0x1c32

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 298
    .line 299
    .line 300
    move-result-wide v3

    .line 301
    iput-wide v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlProtocolHandle:J

    .line 302
    .line 303
    const-wide/16 v5, -0x1

    .line 304
    .line 305
    cmp-long v0, v3, v5

    .line 306
    .line 307
    if-nez v0, :cond_c

    .line 308
    .line 309
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z

    .line 310
    .line 311
    :cond_c
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableFirstNativeMDL:I

    .line 312
    .line 313
    const-wide/16 v5, 0x0

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    if-ne v0, v2, :cond_d

    .line 317
    .line 318
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableMdlProtocol:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    cmp-long v0, v3, v5

    .line 323
    .line 324
    if-lez v0, :cond_d

    .line 325
    .line 326
    :try_start_6
    const-string v0, "com.ss.ttm.player.TTPlayer"

    .line 327
    .line 328
    const/16 v3, 0xc8

    .line 329
    .line 330
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-string v3, "registerNativeMdl"

    .line 335
    .line 336
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 337
    .line 338
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 347
    .line 348
    .line 349
    iget-wide v8, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlProtocolHandle:J

    .line 350
    .line 351
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Ljava/lang/Integer;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_d

    .line 370
    .line 371
    const-string v0, "firstNativeMDL effect"

    .line 372
    .line 373
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setNativeMDLRegister()V

    .line 377
    .line 378
    .line 379
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInvalidMdlProcotol:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :catchall_1
    move-exception v0

    .line 383
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 391
    .line 392
    if-eqz v3, :cond_d

    .line 393
    .line 394
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_d

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 410
    .line 411
    const/16 v3, 0x24bf

    .line 412
    .line 413
    invoke-virtual {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 414
    .line 415
    .line 416
    move-result-wide v3

    .line 417
    const-wide/16 v8, 0x1

    .line 418
    .line 419
    cmp-long v0, v3, v8

    .line 420
    .line 421
    if-nez v0, :cond_e

    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_e
    move v2, v7

    .line 425
    :goto_4
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mSupportHls:Z

    .line 426
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    const-string/jumbo v2, "start: get mdlprotocolHandle: "

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-wide v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlProtocolHandle:J

    .line 439
    .line 440
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeat:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

    .line 451
    .line 452
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 453
    .line 454
    iget v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mHeartBeatInterval:I

    .line 455
    .line 456
    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->start(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;I)V

    .line 457
    .line 458
    .line 459
    iput v7, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 460
    .line 461
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataloaderStartComplete:Z

    .line 462
    .line 463
    if-eqz v0, :cond_f

    .line 464
    .line 465
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 466
    .line 467
    sget-object v2, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->Initializing:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-ne v0, v2, :cond_f

    .line 474
    .line 475
    sget-object v0, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->InitializeComplete:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 482
    .line 483
    :cond_f
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$3;

    .line 484
    .line 485
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$3;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 486
    .line 487
    .line 488
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 489
    .line 490
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 491
    .line 492
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 493
    .line 494
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 498
    .line 499
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->startListen(Ljava/lang/ref/WeakReference;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 509
    .line 510
    const/16 v2, 0x1d09

    .line 511
    .line 512
    invoke-virtual {v0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v2

    .line 516
    long-to-int v0, v2

    .line 517
    invoke-static {v0}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->getDemuxerFactory(I)J

    .line 518
    .line 519
    .line 520
    move-result-wide v2

    .line 521
    iput-wide v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDemuxerHandle:J

    .line 522
    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    const-string v3, "KeyIsGetDemuxerVersion: "

    .line 529
    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v0, ", handle: "

    .line 537
    .line 538
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-wide v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDemuxerHandle:J

    .line 542
    .line 543
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-wide v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDemuxerHandle:J

    .line 554
    .line 555
    cmp-long v0, v2, v5

    .line 556
    .line 557
    if-eqz v0, :cond_10

    .line 558
    .line 559
    const-string v0, "set KeyIsSetDemuxerHandle"

    .line 560
    .line 561
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 565
    .line 566
    iget-wide v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDemuxerHandle:J

    .line 567
    .line 568
    const/16 v4, 0x1d08

    .line 569
    .line 570
    invoke-virtual {v0, v4, v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setLongValue(IJ)V

    .line 571
    .line 572
    .line 573
    :cond_10
    const-string v0, "DataLoader start."

    .line 574
    .line 575
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 576
    .line 577
    .line 578
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 579
    .line 580
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 583
    .line 584
    .line 585
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    iget v0, v0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->enableMdlLockOptimizeV2:I

    .line 590
    .line 591
    if-lez v0, :cond_11

    .line 592
    .line 593
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 594
    .line 595
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_VOID:I

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->updateLockType(I)V

    .line 598
    .line 599
    .line 600
    :cond_11
    return-void

    .line 601
    :cond_12
    :try_start_8
    const-string/jumbo v0, "start data loader fail"

    .line 602
    .line 603
    .line 604
    sget-object v1, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->InitializeError:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 611
    .line 612
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeErrorString:Ljava/lang/String;

    .line 613
    .line 614
    new-instance v1, Ljava/lang/Exception;

    .line 615
    .line 616
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw v1

    .line 620
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    const-string v1, "initMdlFail:"

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLoadFailMsg()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    sget-object v1, Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;->InitializeError:Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;

    .line 642
    .line 643
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInitializeState:I

    .line 648
    .line 649
    new-instance v1, Ljava/lang/Exception;

    .line 650
    .line 651
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 655
    :goto_5
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 656
    .line 657
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 658
    .line 659
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 660
    .line 661
    .line 662
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    iget v1, v1, Lcom/ss/ttvideoengine/EngineGlobalConfig;->enableMdlLockOptimizeV2:I

    .line 667
    .line 668
    if-lez v1, :cond_14

    .line 669
    .line 670
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 671
    .line 672
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_VOID:I

    .line 673
    .line 674
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->updateLockType(I)V

    .line 675
    .line 676
    .line 677
    :cond_14
    throw v0
.end method

.method public startDownload(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->startDownload(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public startDownload(Ljava/lang/String;Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->downloadHlsSource(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_0
    if-nez p2, :cond_4

    .line 7
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    invoke-virtual {p2, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->downloadResource(Ljava/lang/String;)V

    .line 8
    :cond_4
    const-string p2, "DataLoaderHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downloader] start download resource = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 9
    :catchall_1
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    return v1

    .line 10
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1
.end method

.method public suspendPreconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DataLoaderHelper"

    .line 6
    .line 7
    const-string v1, "need start mdl first"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 14
    .line 15
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->suspendPreconnect()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 26
    .line 27
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public suspendedDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mDataLoaderHelperAdapter:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->cancelDownload(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 22
    .line 23
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->suspendDownload(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "DataLoaderHelper"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "[downloader] suspended download, key = "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 60
    .line 61
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_2
    return-void

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 75
    .line 76
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public switchToCellularNetwork()V
    .locals 2

    .line 1
    const-string/jumbo v0, "start do switch to cellular"

    .line 2
    .line 3
    .line 4
    const-string v1, "multinetwork"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->switchToCellularNetwork()V

    .line 10
    .line 11
    .line 12
    const-string v0, "end do switch to cellular"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public switchToDefaultNetwork()V
    .locals 2

    .line 1
    const-string/jumbo v0, "start do switch to default"

    .line 2
    .line 3
    .line 4
    const-string v1, "multinetwork"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->switchToDefaultNetwork()V

    .line 10
    .line 11
    .line 12
    const-string v0, "end do switch to default"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public tryQuickGetCacheFileSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 9
    .line 10
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 20
    .line 21
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 24
    .line 25
    .line 26
    return-wide v1

    .line 27
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryQuickGetCacheSize(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    cmp-long p1, v3, v1

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    move-wide v1, v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 44
    .line 45
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public tryStartStrategyCenter()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 8
    .line 9
    const/16 v1, 0x1cde

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 16
    .line 17
    const/16 v3, 0x1cea

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v0, v4

    .line 26
    .line 27
    const-string v7, "DataLoaderHelper"

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    const-wide/16 v8, -0x1

    .line 32
    .line 33
    cmp-long v6, v0, v8

    .line 34
    .line 35
    if-eqz v6, :cond_3

    .line 36
    .line 37
    const-wide/16 v8, -0x3e6

    .line 38
    .line 39
    cmp-long v6, v0, v8

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-gez v4, :cond_0

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    new-instance v4, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 50
    .line 51
    invoke-direct {v4}, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mediaOperateThread:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 55
    .line 56
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setIOManager(JJ)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setContext(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->loadPluginLibrary(Lcom/ss/ttvideoengine/LibraryLoaderProxy;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    xor-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->start(Z)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "after start strategy center running="

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v7, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {}, Lcom/ss/ttvideoengine/BaseAppInfo;->toJsonString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->configAppInfo(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/16 v1, 0x79eb

    .line 146
    .line 147
    sget-object v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 163
    .line 164
    const/16 v2, 0x79e9

    .line 165
    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isRunning()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v1, 0x406

    .line 186
    .line 187
    if-nez v0, :cond_2

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string/jumbo v2, "strategy center start failed, set mdl preload strategy back "

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v7, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 213
    .line 214
    iget v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlOldPreloadStrategy:I

    .line 215
    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 221
    .line 222
    iget v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mMdlPreloadStrategy:I

    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v5, "tryStartStrategyCenter iomanagerHandle or iomanagerVersion is not validiomanagerHandle="

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, " iomanagerVersion="

    .line 243
    .line 244
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v7, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_4
    :goto_2
    return-void
.end method

.method public tryToClearAndGetCachesByUsedTime(JZ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 17
    .line 18
    .line 19
    const-wide/16 p1, -0x1

    .line 20
    .line 21
    return-wide p1

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryToClearAndGetCachesByUsedTime(JZ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object p3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 27
    .line 28
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 39
    .line 40
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    :goto_0
    return-wide p1

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 50
    .line 51
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public tryToClearCachesByUsedTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 13
    .line 14
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryToClearCachesByUsedTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 24
    .line 25
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    return-void

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 39
    .line 40
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public updateCurrentNetStatus()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DataLoaderHelper"

    .line 6
    .line 7
    const-string v1, "dataloader not started, not allow set play info"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mEnableSetMDLNetStatus:I

    .line 14
    .line 15
    if-gtz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 19
    .line 20
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessStrength()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 34
    .line 35
    const/16 v2, 0x1cf2

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getPortraitResult()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 49
    .line 50
    const/16 v2, 0x1cf1

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 56
    .line 57
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public updateDnsInfo(Lorg/json/JSONObject;J)V
    .locals 7

    .line 1
    const-string v0, "DataLoaderHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "ip direct info invalid"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-wide v1, Lcom/ss/ttvideoengine/net/NetUtils;->netUpdateTimeMs:J

    .line 12
    .line 13
    const-wide/16 v3, -0x1

    .line 14
    .line 15
    cmp-long v3, v1, v3

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const-wide/16 v3, 0x3e8

    .line 20
    .line 21
    mul-long/2addr v3, p2

    .line 22
    cmp-long v1, v3, v1

    .line 23
    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    const-string p1, "network did change, dnsinfo is invalid"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 33
    .line 34
    sget v2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->lock(I)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const-string v4, ""

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ge v5, v6, :cond_4

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    add-int/lit8 v6, v6, -0x1

    .line 86
    .line 87
    if-ge v5, v6, :cond_3

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, ","

    .line 98
    .line 99
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_5

    .line 109
    :catch_0
    move-exception p1

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-static {v2, v4, p2, p3}, Lcom/ss/mediakit/net/AVMDLDNSParser;->updateDNSInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 130
    .line 131
    sget p2, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_4
    return-void

    .line 146
    :goto_5
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 147
    .line 148
    sget p3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method public updateLockType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->updateLockType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeDataToFile(Ljava/lang/String;JJI[B)I
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mState:I

    .line 3
    .line 4
    const-string v2, "DataLoaderHelper"

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "not start"

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 16
    .line 17
    sget v3, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->tryLock(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string/jumbo v1, "start write"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mInnerDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 37
    .line 38
    move-object v4, p1

    .line 39
    move-wide v5, p2

    .line 40
    move-wide v7, p4

    .line 41
    move/from16 v9, p6

    .line 42
    .line 43
    move-object/from16 v10, p7

    .line 44
    .line 45
    invoke-virtual/range {v3 .. v10}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->writeDataToFile(Ljava/lang/String;JJI[B)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v1, "end write"

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper;->mLock:Lcom/ss/ttvideoengine/utils/ABLockWrapper;

    .line 55
    .line 56
    sget v4, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->unlock(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v4, "write data to file ret:"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v3
.end method
