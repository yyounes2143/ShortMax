package com.ss.ttvideoengine;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.strategy.IPreloadTaskCallbackListener;
import com.bytedance.vcloud.strategy.ISelectBitrateListener;
import com.bytedance.vcloud.strategy.StrategyCenter;
import com.bytedance.vcloud.vctrace.VCTrace;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.mediakit.medialoader.AVMDLCopyOperation;
import com.ss.mediakit.medialoader.AVMDLCopyOperationListener;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.mediakit.medialoader.AVMDLDataLoaderListener;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import com.ss.mediakit.medialoader.AVMDLFileInfo;
import com.ss.mediakit.medialoader.AVMDLStartCompleteListener;
import com.ss.mediakit.medialoader.AVMDLTaskEventListener;
import com.ss.mediakit.medialoader.LoaderListener;
import com.ss.mediakit.net.AVMDLDNSParser;
import com.ss.mediakit.net.AVMDLMultiNetwork;
import com.ss.ttvideoengine.DataLoaderHelperAdapter;
import com.ss.ttvideoengine.VideoModelCache;
import com.ss.ttvideoengine.cache.CopyCacheItem;
import com.ss.ttvideoengine.cache.CopyCacheListener;
import com.ss.ttvideoengine.download.Downloader;
import com.ss.ttvideoengine.fetcher.FetcherApiHelper;
import com.ss.ttvideoengine.fetcher.VideoInfoFetcher;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.log.IVideoEventUploader;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.log.VideoEventBase;
import com.ss.ttvideoengine.log.VideoEventEngineUploader;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.net.NetUtils;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.portrait.PortraitChangeListener;
import com.ss.ttvideoengine.preload.PreloadConfig;
import com.ss.ttvideoengine.preload.PreloadLoadProgressCenter;
import com.ss.ttvideoengine.preload.PreloadMedia;
import com.ss.ttvideoengine.preload.PreloadModelMedia;
import com.ss.ttvideoengine.preload.PreloadScene;
import com.ss.ttvideoengine.preload.PreloadTaskConfig;
import com.ss.ttvideoengine.preload.PreloadURLMedia;
import com.ss.ttvideoengine.preload.PreloadUtil;
import com.ss.ttvideoengine.selector.BestResolution;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter;
import com.ss.ttvideoengine.source.strategy.SmartUrlFetcher;
import com.ss.ttvideoengine.strategrycenter.ISelectBitrateCallback;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.utils.ABLock;
import com.ss.ttvideoengine.utils.ABLockWrapper;
import com.ss.ttvideoengine.utils.DataLoaderCDNLog;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.FormatProvider;
import com.ss.ttvideoengine.utils.MDLExtraInfoHelper;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import com.ss.ttvideoengine.utils.ValueWeakReference;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class DataLoaderHelper implements AVMDLDataLoaderListener, AVMDLStartCompleteListener, PortraitChangeListener {
    public static final int DATALOADER_KEY_CHECK_CONTENT_TYPE_METHOD = 1168;
    public static final int DATALOADER_KEY_DEVICE_SCORE = 123;
    public static final int DATALOADER_KEY_DISABLE_THREAD_POOL = 1169;
    public static final int DATALOADER_KEY_ENABLE_ALOG = 512;
    public static final int DATALOADER_KEY_ENABLE_CENTER_PRELOAD_PROGRESS = 9017;
    public static final int DATALOADER_KEY_ENABLE_CUSTOMDIR_SEARCH_ALL_PATH = 2037;
    public static final int DATALOADER_KEY_ENABLE_ENGINE_PORTRAIT = 2036;
    public static final int DATALOADER_KEY_ENABLE_FILECACHE_V2 = 1007;
    public static final int DATALOADER_KEY_ENABLE_FILE_RING_BUFFER = 1009;
    public static final int DATALOADER_KEY_ENABLE_HLS_PROXY = 9016;
    public static final int DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS = 1166;
    public static final int DATALOADER_KEY_ENABLE_LOAD_MDLV2_FULLLIB = 9030;
    public static final int DATALOADER_KEY_ENABLE_LOAD_P2P_ASYNC = 9015;
    public static final int DATALOADER_KEY_ENABLE_MUTLI_DOWNLOAD_PATH = 9014;
    public static final int DATALOADER_KEY_ENABLE_NOTIFY_ERROR = 9018;
    public static final int DATALOADER_KEY_ENABLE_NOTIFY_NOT_ONLY_NETWORK_ERROR = 9019;
    public static final int DATALOADER_KEY_ENABLE_PRELOAD_ALL_TS = 9023;
    public static final int DATALOADER_KEY_ENABLE_PRELOAD_FIRST_TS = 9021;
    public static final int DATALOADER_KEY_ENABLE_PRELOAD_REUSE = 60;
    public static final int DATALOADER_KEY_ENABLE_REPORT_HEADERS = 12004;
    public static final int DATALOADER_KEY_ENABLE_UPDATE_NET_STATUS = 1170;
    public static final int DATALOADER_KEY_ENABLE_USE_ORIGINAL_URL = 1164;
    public static final int DATALOADER_KEY_FILE_EXTEND_BUFFER = 1010;
    public static final int DATALOADER_KEY_GET_ACCESS_TYPE = 1008;
    public static final int DATALOADER_KEY_GET_MDL_PROTOCOL_HANDLE = 1003;
    public static final int DATALOADER_KEY_GLOBAL_OPTION_END = 59999;
    public static final int DATALOADER_KEY_GLOBAL_OPTION_START = 50000;
    public static final int DATALOADER_KEY_HEART_BEAT_INTERVAL = 61;
    public static final int DATALOADER_KEY_INT64_P2P_STRAGETY_VALUE = 1142;
    public static final int DATALOADER_KEY_INT_ACCESS_CHECK_LEVEL = 1102;
    public static final int DATALOADER_KEY_INT_ALLOW_TRY_THE_LAST_URL = 1133;
    public static final int DATALOADER_KEY_INT_AUDIO_PRELOAD_FIRST = 1113;
    public static final int DATALOADER_KEY_INT_BACKUP_DNS_TYPE = 91;
    public static final int DATALOADER_KEY_INT_BLOCK_HOST_ERR_IP_COUNT = 1148;
    public static final int DATALOADER_KEY_INT_CHECKSUM_LEVEL = 13;
    public static final int DATALOADER_KEY_INT_CHECK_CACHE_DIR = 2025;
    public static final int DATALOADER_KEY_INT_CHECK_PRELOAD_LEVEL = 1111;
    public static final int DATALOADER_KEY_INT_CONNECT_POOL_STRAGETY_VALUE = 1144;
    public static final int DATALOADER_KEY_INT_COOKIE_TOKEN_CHECK_LEVEL = 1514;
    public static final int DATALOADER_KEY_INT_CURRENT_ACCESS_TYPE = 1104;
    public static final int DATALOADER_KEY_INT_CUR_DISK_SIZE_MB = 2103;
    public static final int DATALOADER_KEY_INT_CUR_MEMORY_SIZE_MB = 2105;
    public static final int DATALOADER_KEY_INT_DASH_AUDIO_PRELOAD_RATIO = 1504;
    public static final int DATALOADER_KEY_INT_DASH_MIN_AUDIO_PRELOAD_SIZE = 1503;
    public static final int DATALOADER_KEY_INT_DEFAULT_DNS_EXPIRED_TIME = 1141;
    public static final int DATALOADER_KEY_INT_DEV_DISK_SIZE_MB = 2102;
    public static final int DATALOADER_KEY_INT_DEV_MEMORY_SIZE_MB = 2104;
    public static final int DATALOADER_KEY_INT_DISABLE_FILEPATH_CHECK = 9022;
    public static final int DATALOADER_KEY_INT_DISABLE_RECENT_CACHE = 2027;
    public static final int DATALOADER_KEY_INT_DNS_MAIN_DELAYED_USE_BACKUP_TIME = 92;
    public static final int DATALOADER_KEY_INT_ENABLE_BACKUP_IP = 115;
    public static final int DATALOADER_KEY_INT_ENABLE_BENCHMARK_IO = 93;
    public static final int DATALOADER_KEY_INT_ENABLE_BUFFER_PRELOAD = 1163;
    public static final int DATALOADER_KEY_INT_ENABLE_BYTEMEDIANETLOADER = 1701;
    public static final int DATALOADER_KEY_INT_ENABLE_CACHE_REQRANGE = 1134;
    public static final int DATALOADER_KEY_INT_ENABLE_DNS_BACKUP_IP = 104;
    public static final int DATALOADER_KEY_INT_ENABLE_DNS_LOG = 106;
    public static final int DATALOADER_KEY_INT_ENABLE_DNS_PARALLEL_PARSE = 103;
    public static final int DATALOADER_KEY_INT_ENABLE_DNS_REFRESH = 105;
    public static final int DATALOADER_KEY_INT_ENABLE_DOWNLOADER_LOG = 21;
    public static final int DATALOADER_KEY_INT_ENABLE_DUMPLIBMD5 = 9000;
    public static final int DATALOADER_KEY_INT_ENABLE_DYNAMIC_SOCKET_TIMEOUT = 1137;
    public static final int DATALOADER_KEY_INT_ENABLE_EARLY_DATA = 1160;
    public static final int DATALOADER_KEY_INT_ENABLE_EVENTINFO = 200;
    public static final int DATALOADER_KEY_INT_ENABLE_EXTERN_DNS = 7;
    public static final int DATALOADER_KEY_INT_ENABLE_FILE_MUTEX_OPTIMIZE = 2017;
    public static final int DATALOADER_KEY_INT_ENABLE_FIRST_VIDEO_NATIVEMDL = 1012;
    public static final int DATALOADER_KEY_INT_ENABLE_HLS = 9008;
    public static final int DATALOADER_KEY_INT_ENABLE_IOMANAGER = 1150;
    public static final int DATALOADER_KEY_INT_ENABLE_IP_BUCKET = 64;
    public static final int DATALOADER_KEY_INT_ENABLE_LAZY_BUFFERPOOL = 1118;
    public static final int DATALOADER_KEY_INT_ENABLE_LIBMANAGER = 9013;
    public static final int DATALOADER_KEY_INT_ENABLE_LOADER_PREEMPT = 1101;
    public static final int DATALOADER_KEY_INT_ENABLE_LOADER_SEEK = 1135;
    public static final int DATALOADER_KEY_INT_ENABLE_MDLV2 = 1154;
    public static final int DATALOADER_KEY_INT_ENABLE_MISS_REASON = 2031;
    public static final int DATALOADER_KEY_INT_ENABLE_MULTI_NETWORK = 1501;
    public static final int DATALOADER_KEY_INT_ENABLE_NETSCHEDULER = 1128;
    public static final int DATALOADER_KEY_INT_ENABLE_NETWORK_CHANGED_LISTEN = 1011;
    public static final int DATALOADER_KEY_INT_ENABLE_NEW_BUFFERPOOL = 1120;
    public static final int DATALOADER_KEY_INT_ENABLE_OKHTTPLOADER = 31;
    public static final int DATALOADER_KEY_INT_ENABLE_OWN_VDP_PRELOAD_NOTIFY = 1151;
    @Deprecated
    public static final int DATALOADER_KEY_INT_ENABLE_P2P_STRAGETY_CONTROL = 95;
    public static final int DATALOADER_KEY_INT_ENABLE_P2P_UPLOAD = 2100;
    public static final int DATALOADER_KEY_INT_ENABLE_PLAYINFO_CACHE = 1124;
    public static final int DATALOADER_KEY_INT_ENABLE_PLAY_LOG = 1127;
    public static final int DATALOADER_KEY_INT_ENABLE_PRECONNECT = 1001;
    public static final int DATALOADER_KEY_INT_ENABLE_PREPARSE_HOST = 114;
    public static final int DATALOADER_KEY_INT_ENABLE_REPORT_SPEED = 1100;
    public static final int DATALOADER_KEY_INT_ENABLE_SESSION_REUSE = 101;
    public static final int DATALOADER_KEY_INT_ENABLE_SOCKET_IDLE_TIMEOUT = 9;
    public static final int DATALOADER_KEY_INT_ENABLE_SOCKET_REUSE = 8;
    public static final int DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE = 1171;
    public static final int DATALOADER_KEY_INT_ENABLE_SPEED_PREDICT = 1162;
    public static final int DATALOADER_KEY_INT_ENABLE_SPEED_REPORT = 1172;
    public static final int DATALOADER_KEY_INT_ENABLE_SPLIT_PRELOAD_WITH_DATALOADER = 1155;
    public static final int DATALOADER_KEY_INT_ENABLE_STORAGE_MODULE = 2000;
    public static final int DATALOADER_KEY_INT_ENABLE_STRATEGY_CENTER_CANCEL_ALL = 1505;
    public static final int DATALOADER_KEY_INT_ENABLE_SYNDNS_P2P = 1108;
    public static final int DATALOADER_KEY_INT_ENABLE_THREADPOOL_CHECK_IDLE = 2010;
    public static final int DATALOADER_KEY_INT_ENABLE_TRACEID_PRELOAD_LOG = 2033;
    public static final int DATALOADER_KEY_INT_ENABLE_TTNETLOADER = 22;
    public static final int DATALOADER_KEY_INT_ENABLE_TTQUICHELOADER = 24;
    public static final int DATALOADER_KEY_INT_ENABLE_TTQUICHELOADER_CHECK_WITH_NETWORK_TYPE = 25;
    public static final int DATALOADER_KEY_INT_ENABLE_USE_GROUP_ID = 2026;
    public static final int DATALOADER_KEY_INT_ENABLE_VIDEOMDOEL_HIT_CACHE_CALLBACK = 12002;
    public static final int DATALOADER_KEY_INT_ENABLE_WAIT_NET_REACHABLE = 2016;
    public static final int DATALOADER_KEY_INT_ENCRYPT_VERSION = 30;
    public static final int DATALOADER_KEY_INT_ERROR_STATE_TRUST_TIME = 65;
    public static final int DATALOADER_KEY_INT_FILEMANAGER_INTERVAL = 2035;
    public static final int DATALOADER_KEY_INT_FILE_EXTEND_SIZE = 1146;
    public static final int DATALOADER_KEY_INT_FIRSTRANGE_LEFT_THRESHOLD = 1132;
    public static final int DATALOADER_KEY_INT_FORBID_BYPASS_COOKIE = 1117;
    public static final int DATALOADER_KEY_INT_FORBID_NATIVE_MDL_FOR_ORIGINAL_URL = 32;
    public static final int DATALOADER_KEY_INT_FORCE_DNS_EXPIRED_TIME = 1140;
    public static final int DATALOADER_KEY_INT_GLOBAL_SPEED_SAMPLE_INTERVAL = 113;
    public static final int DATALOADER_KEY_INT_HEADER_DATA_MEM_CACHE = 1114;
    public static final int DATALOADER_KEY_INT_HLS_TS_FILE_KEY_GENERATE_TYPE = 12001;
    public static final int DATALOADER_KEY_INT_IGNOREPLAYINFO = 9001;
    public static final int DATALOADER_KEY_INT_IGNORE_PLAYER_STALL = 18;
    public static final int DATALOADER_KEY_INT_IGNORE_TEXT_PLAIN_SPEED_TEST = 2022;
    public static final int DATALOADER_KEY_INT_INITIAL_SOCKET_TIMEOUT = 1138;
    public static final int DATALOADER_KEY_INT_IPV4_NUM = 1116;
    public static final int DATALOADER_KEY_INT_IPV6_NUM = 1115;
    public static final int DATALOADER_KEY_INT_IS_CLOSE_FILE_CACHE = 50;
    public static final int DATALOADER_KEY_INT_IS_ENABLE_MAX_CACHE_AGE_FOR_ALL_DIR = 56;
    public static final int DATALOADER_KEY_INT_LIMIT_IP_NUM = 2012;
    public static final int DATALOADER_KEY_INT_LOADER_TYPE = 5;
    public static final int DATALOADER_KEY_INT_MAIN_DNS_TYPE = 90;
    public static final int DATALOADER_KEY_INT_MAXCACHESIZE = 1;
    public static final int DATALOADER_KEY_INT_MAX_ALIVE_HOST_NUM = 1145;
    public static final int DATALOADER_KEY_INT_MAX_CACHE_AGE = 55;
    public static final int DATALOADER_KEY_INT_MAX_FILE_MEM_CACHE_NUM = 1159;
    public static final int DATALOADER_KEY_INT_MAX_FILE_MEM_CACHE_SIZE = 1158;
    public static final int DATALOADER_KEY_INT_MAX_IP_COUNT = 63;
    public static final int DATALOADER_KEY_INT_MAX_SOCKET_REUSE_NUM = 1139;
    public static final int DATALOADER_KEY_INT_MAX_TLS_VEERSION = 100;
    public static final int DATALOADER_KEY_INT_MDL_CLOSE_LOCAL_SERVER = 1013;
    public static final int DATALOADER_KEY_INT_MIN_ALLOW_SPEED = 1147;
    public static final int DATALOADER_KEY_INT_MULTI_SPEED_SAMPL_INTERVAL = 112;
    public static final int DATALOADER_KEY_INT_NEED_DL_LOAD_P2P_LIB = 15;
    public static final int DATALOADER_KEY_INT_NEED_MDL_LOAD_MDLV2_LIB = 33;
    public static final int DATALOADER_KEY_INT_NEED_SPEED_TEST_BY_TIMEINTERNAL = 1112;
    public static final int DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_ALL_NETERR = 1129;
    public static final int DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_DURATION_MS = 1131;
    public static final int DATALOADER_KEY_INT_NETSCHEDULER_BLOCK_ERR_COUNT = 1130;
    public static final int DATALOADER_KEY_INT_NETWORK_CHANGED = 1000;
    public static final int DATALOADER_KEY_INT_NET_LOG_MAX_SIZE = 2024;
    public static final int DATALOADER_KEY_INT_NET_UNREACHABLE_STOP_RETRY = 2015;
    public static final int DATALOADER_KEY_INT_NET_UNREACHABLE_TIMEOUT = 2019;
    public static final int DATALOADER_KEY_INT_NEW_BUFFERPOOL_BLOCK_SIZE = 1121;
    public static final int DATALOADER_KEY_INT_NEW_BUFFERPOOL_GROWCOUNT = 1123;
    public static final int DATALOADER_KEY_INT_NEW_BUFFERPOOL_RESIDENT_SIZE = 1122;
    public static final int DATALOADER_KEY_INT_NON_BLOCK_RANGE_MAX_KB = 2014;
    public static final int DATALOADER_KEY_INT_NON_BLOCK_RANGE_MODE = 2013;
    public static final int DATALOADER_KEY_INT_ONLY_USE_CDN = 66;
    public static final int DATALOADER_KEY_INT_OPENTIMEOUT = 3;
    public static final int DATALOADER_KEY_INT_OPTIMIZE_RANGE = 2023;
    public static final int DATALOADER_KEY_INT_P2P_COST_TAG_1 = 2020;
    public static final int DATALOADER_KEY_INT_P2P_COST_TAG_2 = 2021;
    public static final int DATALOADER_KEY_INT_P2P_FIRSTRANGE_LOADER_TYPE = 1143;
    public static final int DATALOADER_KEY_INT_P2P_FIRSTRANGE_TYPE = 1125;
    @Deprecated
    public static final int DATALOADER_KEY_INT_P2P_LEVEL = 16;
    public static final int DATALOADER_KEY_INT_P2P_PREDOWN = 1126;
    public static final int DATALOADER_KEY_INT_P2P_PREDOWN_PEER_COUNT = 1136;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_EXPIRED_TIME = 99;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_MAX_BUFFERING_TIME = 98;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_MAX_LEAVE_WAIT_TIME = 97;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_MIN_NET_NETWORK_LEVEL = 110;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_MIN_NET_SPEED = 109;
    public static final int DATALOADER_KEY_INT_P2P_STRAGETY_MIN_PLAYNUM = 96;
    public static final int DATALOADER_KEY_INT_PARALLEL_NUM = 11;
    public static final int DATALOADER_KEY_INT_PCDN_AUTO = 34;
    public static final int DATALOADER_KEY_INT_PLAY_LOG = 10;
    public static final int DATALOADER_KEY_INT_PRECONNECT_NUM = 1002;
    public static final int DATALOADER_KEY_INT_PRELOAD_CHECK_URL = 1513;
    public static final int DATALOADER_KEY_INT_PRELOAD_FLOAT_SIZE = 19;
    public static final int DATALOADER_KEY_INT_PRELOAD_INFO_RECORD_MAX_COUNT = 2032;
    public static final int DATALOADER_KEY_INT_PRELOAD_LOWER_BOUND_BUFFER_MS = 1156;
    public static final int DATALOADER_KEY_INT_PRELOAD_PRE_CONNECT = 20;
    public static final int DATALOADER_KEY_INT_PRELOAD_STRAGETY = 12;
    public static final int DATALOADER_KEY_INT_PRELOAD_UPPER_BOUND_BUFFER_MS = 1157;
    public static final int DATALOADER_KEY_INT_PRELOAD_WAIT_LIST_TYPE = 80;
    public static final int DATALOADER_KEY_INT_RWTIMEOUT = 2;
    public static final int DATALOADER_KEY_INT_SESSION_CACHE_INTERVAL = 2034;
    public static final int DATALOADER_KEY_INT_SESSION_TIMEOUT = 1119;
    public static final int DATALOADER_KEY_INT_SETTINGS_ENABLE = 119;
    public static final int DATALOADER_KEY_INT_SET_BACKUP_LOADERTYPE = 1109;
    public static final int DATALOADER_KEY_INT_SKIP_CDN_BEFORE_EXPIRED_SEC = 2018;
    public static final int DATALOADER_KEY_INT_SOCKET_BUFF_KB = 1105;
    public static final int DATALOADER_KEY_INT_SOCKET_RECV_BUFF_BYTES = 1161;
    public static final int DATALOADER_KEY_INT_SPEED_COEFFICIENTVALUE = 94;
    public static final int DATALOADER_KEY_INT_START_NEXT_DOWNLOAD_THRESHOLD = 1103;
    public static final int DATALOADER_KEY_INT_STO_IO_WRITE_LIMIT_KB_TH1 = 2004;
    public static final int DATALOADER_KEY_INT_STO_IO_WRITE_LIMIT_KB_TH2 = 2005;
    public static final int DATALOADER_KEY_INT_STO_MAX_IDLE_TIME_SEC = 2006;
    public static final int DATALOADER_KEY_INT_STO_PLAY_DLD_WIN_SIZE_KB_LS = 2002;
    public static final int DATALOADER_KEY_INT_STO_PLAY_DLD_WIN_SIZE_KB_NM = 2001;
    public static final int DATALOADER_KEY_INT_STO_RING_BUFFER_SIZE_KB = 2003;
    public static final int DATALOADER_KEY_INT_TEST_SPEED_VERSION = 14;
    public static final int DATALOADER_KEY_INT_THREADPOOL_IDLE_TTL_SECOND = 2011;
    public static final int DATALOADER_KEY_INT_THREADPOOL_MIN_COUNT = 2009;
    public static final int DATALOADER_KEY_INT_THREAD_STACK_SIZE_LEVEL = 2008;
    public static final int DATALOADER_KEY_INT_TRACE_HOST = 122;
    public static final int DATALOADER_KEY_INT_TRYCOUNT = 4;
    public static final int DATALOADER_KEY_INT_TTNETLOADER_CRONET_BUF_SIZE_KB = 23;
    public static final int DATALOADER_KEY_INT_UPDATE_FILE_INTERNAL = 2028;
    public static final int DATALOADER_KEY_INT_USE_NEW_SPEED_TEST_SINGLE = 121;
    public static final int DATALOADER_KEY_INT_VERSION_INFO = 6;
    public static final int DATALOADER_KEY_INT_WRITEFILENOTIFY_INTERVALMS = 17;
    public static final int DATALOADER_KEY_INT_XY_LIB_VALUE = 1110;
    public static final int DATALOADER_KEY_IS_SUPPORT_HLS = 9009;
    public static final int DATALOADER_KEY_LIVE_CACHE_HTTP_TO_P2P = 506;
    public static final int DATALOADER_KEY_LIVE_CAHCE_P2P_TO_HTTP = 507;
    public static final int DATALOADER_KEY_LIVE_CONTAINER_STRING = 514;
    public static final int DATALOADER_KEY_LIVE_ENEBALE_P2P = 500;
    public static final int DATALOADER_KEY_LIVE_LOADER_ENABLE = 502;
    public static final int DATALOADER_KEY_LIVE_LOADER_TYPE = 501;
    public static final int DATALOADER_KEY_LIVE_MOBILE_DOWNLOAD_ALLOW = 511;
    public static final int DATALOADER_KEY_LIVE_MOBILE_UPLOAD_ALLOW = 510;
    public static final int DATALOADER_KEY_LIVE_RECV_DATA_TIMEOUT = 513;
    public static final int DATALOADER_KEY_LIVE_TRY_SWITCH_P2P_TIMES = 508;
    public static final int DATALOADER_KEY_LIVE_WAIT_P2P_THREDTHOLD = 509;
    public static final int DATALOADER_KEY_LIVE_WATCH_DURATION_THRESHOLD = 505;
    public static final int DATALOADER_KEY_LONG_DOWNLOAD_MONITOR_MIN_LOAD_SIZE = 1153;
    public static final int DATALOADER_KEY_LONG_DOWNLOAD_MONITOR_TIME_INTERNAL = 1152;
    public static final int DATALOADER_KEY_MAX_LOADER_LOG_NUM = 1167;
    public static final int DATALOADER_KEY_MDL_OPTION_END = 89999;
    public static final int DATALOADER_KEY_MDL_OPTION_START = 80000;
    public static final int DATALOADER_KEY_NOTIFY_DNSLOG = 6;
    public static final int DATALOADER_KEY_NOTIFY_DOWNLOADERLOG = 7;
    public static final int DATALOADER_KEY_NOTIFY_FILE_DELETE_SIZE_BY_USEDTIME = 31;
    public static final int DATALOADER_KEY_NOTIFY_HEARTBEATLOG = 3;
    public static final int DATALOADER_KEY_NOTIFY_HTTP_HEADERS = 33;
    public static final int DATALOADER_KEY_NOTIFY_INVALID = -1;
    public static final int DATALOADER_KEY_NOTIFY_IOSPEEDINFO = 20;
    public static final int DATALOADER_KEY_NOTIFY_MDL_STARTED = 11;
    public static final int DATALOADER_KEY_NOTIFY_NEWLOG = 10;
    public static final int DATALOADER_KEY_NOTIFY_OWNLIVEMDLLOG = 4;
    public static final int DATALOADER_KEY_NOTIFY_OWNLIVEMDLLOG_SAMPLE = 5;
    public static final int DATALOADER_KEY_NOTIFY_OWNVDPLOG = 1;
    public static final int DATALOADER_KEY_NOTIFY_PRELOADEND = 21;
    public static final int DATALOADER_KEY_NOTIFY_PRELOAD_CANCLLED = 8;
    public static final int DATALOADER_KEY_NOTIFY_SPEEDINFO = 2;
    public static final int DATALOADER_KEY_NOTIFY_SPEEDINFO_BY_TIMEINTERNAL = 32;
    public static final int DATALOADER_KEY_NOTIFY_TASKLOG = 0;
    public static final int DATALOADER_KEY_NOTIFY_TASKOPEN = 30;
    public static final int DATALOADER_KEY_NOTIFY_TRIGGER_PRELOAD = 9;
    public static final int DATALOADER_KEY_PLAY_INFO_BUFFERING_END = 26;
    public static final int DATALOADER_KEY_PLAY_INFO_BUFFERING_START = 25;
    public static final int DATALOADER_KEY_PLAY_INFO_CURRENT_BUFFER = 27;
    public static final int DATALOADER_KEY_PLAY_INFO_LOAD_PERCENT = 24;
    public static final int DATALOADER_KEY_PLAY_INFO_PLAYING_POS = 23;
    public static final int DATALOADER_KEY_PLAY_INFO_RENDER_START = 22;
    public static final int DATALOADER_KEY_PLAY_INFO_SEEK_ACTION = 28;
    public static final int DATALOADER_KEY_SET_ALOG_WRITE_PTR = 62;
    public static final int DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE = 1005;
    public static final int DATALOADER_KEY_SET_MDL_PROTOCOL_STATUS = 1004;
    public static final int DATALOADER_KEY_SET_RINGBUFFER_SIZE_KB = 1006;
    public static final int DATALOADER_KEY_STRING_CACHEDIR = 0;
    public static final int DATALOADER_KEY_STRING_DM_DOMAIN = 9003;
    public static final int DATALOADER_KEY_STRING_DOWNLOAD_DIR = 111;
    public static final int DATALOADER_KEY_STRING_DYNAMIC_PRECONNECT_CONFIG_STR = 1165;
    public static final int DATALOADER_KEY_STRING_FILE_RINGBUFFER_OPT_STR = 1510;
    public static final int DATALOADER_KEY_STRING_FORESIGHT_DOMAIN = 9004;
    public static final int DATALOADER_KEY_STRING_GET_CUSTON_UA = 1509;
    public static final int DATALOADER_KEY_STRING_GOOGLE_DNS_HOST = 108;
    public static final int DATALOADER_KEY_STRING_IS_CACHE_DIR_LIST_STR = 9011;
    public static final int DATALOADER_KEY_STRING_IS_P2P_CONFIG_STR = 9012;
    public static final int DATALOADER_KEY_STRING_IS_SOCKET_TRAIN_CENTER_CONFIG = 9010;
    public static final int DATALOADER_KEY_STRING_KEYSERVICE_DOMAINS = 9006;
    public static final int DATALOADER_KEY_STRING_KEY_TOKEN = 9007;
    public static final int DATALOADER_KEY_STRING_MDL_EXTENSION_OPTS = 1500;
    public static final int DATALOADER_KEY_STRING_MDL_TEMP_OPTS = 1502;
    public static final int DATALOADER_KEY_STRING_N80_OPTS = 1511;
    public static final int DATALOADER_KEY_STRING_NETSCHEDULER_CONFIG_STR = 1149;
    public static final int DATALOADER_KEY_STRING_NET_CACHE_DIR = 102;
    public static final int DATALOADER_KEY_STRING_OWN_DNS_HOST = 107;
    public static final int DATALOADER_KEY_STRING_P2P_DOMAINS = 9005;
    public static final int DATALOADER_KEY_STRING_PRECISE_PRELOAD_CONFIG = 2029;
    public static final int DATALOADER_KEY_STRING_SETTINGS_DOMAIN = 9002;
    public static final int DATALOADER_KEY_STRING_SETTINGS_REGION_CN_HOST = 116;
    public static final int DATALOADER_KEY_STRING_SETTINGS_REGION_SG_HOST = 117;
    public static final int DATALOADER_KEY_STRING_SETTINGS_REGION_US_HOST = 118;
    public static final int DATALOADER_KEY_STRING_SET_CUSTON_UA_1 = 1506;
    public static final int DATALOADER_KEY_STRING_SET_CUSTON_UA_2 = 1507;
    public static final int DATALOADER_KEY_STRING_SET_CUSTON_UA_3 = 1508;
    public static final int DATALOADER_KEY_STRING_STO_STRATEGY_CONFIG = 2007;
    public static final int DATALOADER_KEY_STRING_TTQUICHE_OPTS = 1512;
    public static final int DATALOADER_KEY_STRING_UPDATE_CACHE_DIR = 2030;
    public static final int DATALOADER_KEY_STRING_VDP_EXT_DYNAMIC_INFO = 2106;
    public static final int DATALOADER_KEY_STRING_VDP_EXT_GLOBAL_INFO = 2101;
    public static final int DATALOADER_KEY_STRING_VDP_FILE_KEY_REGULAR_EXPRESSION = 12003;
    public static final int DATALOADER_KEY_STR_NOTIFY_NOT_ONLY_NETWORK_ERROR_CODES = 9020;
    public static final int DATALOADER_KEY_STR_SPEED_ENGINE_SETTING = 1173;
    public static final int DATALOADER_KEY_STR_VDP_ABGROUP_ID = 1107;
    public static final int DATALOADER_KEY_STR_VDP_ABTEST_ID = 1106;
    public static final int DATALOADER_PRELOADER_PRIORITY_DEFAULT = 0;
    public static final int DATALOADER_PRELOADER_PRIORITY_HIGH = 100;
    public static final int DATALOADER_PRELOADER_PRIORITY_HIGHEST = 10000;
    public static final int DATALOADER_PRELOADER_PRIORITY_IDLE = 10;
    public static final int DATALOADER_PRELOAD_STRAGETY_ALLOW_PRELOAD_WHEN_PLAY = 0;
    public static final int DATALOADER_PRELOAD_STRAGETY_CENTER = 200;
    public static final int DATALOADER_PRELOAD_STRAGETY_NEW = 100;
    public static final int DATALOADER_PRELOAD_STRAGETY_NOT_ALLOW_PLAYING_KEY_PRELOAD = 1;
    public static final int DATALOADER_PRELOAD_STRAGETY_NOT_ALLOW_PRELOAD_WHEN_PLAY = 2;
    public static final int DATALOADER_PRELOAD_WAIT_LIST_IS_QUEUE = 1;
    public static final int DATALOADER_PRELOAD_WAIT_LIST_IS_STACK = 0;
    public static final int DATALOADER_SPEED_TEST_BY_TIMEINTERNAL_NOTIFY_BY_GENERAL_SPEEDINFO = 1;
    public static final int DATALOADER_SPEED_TEST_BY_TIMEINTERNAL_NOTIFY_BY_TIMEINTERNAL_SPEEDINFO = 2;
    public static final int ERROR_TYPE_FETCHDATA = 3;
    public static final int ERROR_TYPE_FETCHVIDEOMODEL = 1;
    public static final int ERROR_TYPE_FILEOPERATION = 4;
    public static final int ERROR_TYPE_MODULESTART = 2;
    public static final int ERROR_TYPE_NONE = 0;
    public static final int IsClose = 1;
    public static final int IsPlayTask = 1;
    public static final int IsPreloadTask = 2;
    public static final int IsStart = 0;
    public static final int IsUnknown = 0;
    private static final int MAX_URL_LENGTH = 3096;
    public static final String MDL_PREFIX = "mdl://";
    private static final String PLAYER_CLASS_NAME = "com.ss.ttm.player.TTPlayer";
    public static final String PRELOAD_DEFAULT_SCENE = "default";
    public static final int PRELOAD_PROBETYPE_INTERVAL = 0;
    public static final int PRELOAD_PROBETYPE_PLAYTASKPROGRESS = 1;
    private static final int PRIVATE_MESSAGE_ADD_MEDIA_CENTER = 111;
    private static final int PRIVATE_MESSAGE_ADD_PRIORITY_PRELOAD_TASK = 115;
    private static final int PRIVATE_MESSAGE_FOCUS_MEDIA = 114;
    private static final int PRIVATE_MESSAGE_REMOVE_MEDIA_CENTER = 112;
    private static final int PRIVATE_MESSAGE_REMOVE_MEDIA_LIST_CENTER = 113;
    private static final int PRIVATE_MESSAGE_REMOVE_PRIORITY_PRELOAD_TASK = 116;
    public static final int STRATEGY_INTERACTION_BLOCK_DURATION_NON_PRELOADED = 121;
    public static final int STRATEGY_INTERACTION_BLOCK_DURATION_PRELOADED = 120;
    private static final String TAG = "DataLoaderHelper";
    public static final String monitorName = "videoplayer_mdl_sample";
    private volatile boolean isProxyLibraryLoaded;
    private DataLoaderTaskQueue mAllPlayTasks;
    private DataLoaderTaskQueue mAllPreloadTasks;
    private final HashMap<String, ArrayList<WeakReference<TTVideoEngine>>> mAllUsingEngies;
    private boolean mAudioPreloadFirst;
    private int mBackupLoaderType;
    private ClassLoader mClasssLoader;
    private boolean mCloseLocalServer;
    private AVMDLDataLoaderConfigure mConfigure;
    private Context mContext;
    private int mCurrentAccessType;
    private int mDashAudioPreloadMinSize;
    private int mDashAudioPreloadRatio;
    private DataLoaderHelperAdapter mDataLoaderHelperAdapter;
    private long mDemuxerHandle;
    private boolean mDidConfigMdlV2;
    private int mDisableFilePathCheck;
    private int mEnableBackupIP;
    private int mEnableBufferPreload;
    private int mEnableCenterPreloadProgressCallback;
    private int mEnableCheckPreloadUrls;
    private int mEnableDumpLibMd5;
    private int mEnableFirstNativeMDL;
    private int mEnableHLSProxy;
    private int mEnableHls;
    private int mEnableLibManager;
    private int mEnableLoadMdlv2Fulllib;
    private boolean mEnableMdlProtocol;
    private int mEnableMdlV2;
    private int mEnableNetworkChangedListen;
    private int mEnableNotOnlyNotifyNetError;
    private int mEnableNotifyError;
    private int mEnablePreParseHost;
    private int mEnablePreloadAllTs;
    private int mEnablePreloadFirstTs;
    private int mEnableReportSpeed;
    private int mEnableSetMDLNetStatus;
    private int mEnableSplitPreload;
    private int mEnableStrategyCenterCancelAll;
    private int mEnableVideoModelHitCacheCallback;
    private final ReentrantLock mEngineLock;
    private VideoEventEngineUploader mEngineUploader;
    private Exception mException;
    private DataLoaderTaskQueue mExecuteTasks;
    private int mFloatSize;
    private boolean mForbidNativeMDLForOriUrl;
    private boolean mHLSProxyValid;
    private DataLoaderHeartBeat mHeartBeat;
    private int mHeartBeatInterval;
    private String mInitializeErrorString;
    private int mInitializeState;
    private AVMDLDataLoader mInnerDataLoader;
    private volatile boolean mInnerDataloaderStartComplete;
    private int mInvalidCode;
    private boolean mInvalidMdlProcotol;
    private final DataLoaderListenerWrapper mListener;
    private final ABLockWrapper mLock;
    private int mMdlDataSourceId;
    private int mMdlOldPreloadStrategy;
    private int mMdlPreloadStrategy;
    private long mMdlProtocolHandle;
    private VideoModelCache mModelCache;
    private int mNeedDLLoadP2PLib;
    private boolean mNeedMDLLoadMDLV2Lib;
    private int mNeedSpeedTestByTimeInternal;
    private TTNetworkStateCallback mNetWorkChangeCb;
    private WeakReference<TTNetworkStateCallback> mNetWorkChangeCbr;
    private ArrayList<Integer> mNotifyNetErrors;
    private int mPreloadPreConnect;
    private int mPreloadTaskIgnorePlayerStall;
    private DataLoaderTaskQueue mPreloadTasks;
    private final PreloadUtil mPreloadUtil;
    private volatile LibraryLoaderProxy mProxy;
    private volatile boolean mReportLogEnable;
    private volatile int mState;
    private boolean mSupportHls;
    private TestSpeedListener mTestSpeedListener;
    private String mUpdatePlaySourceId;
    private IVideoEventUploader mUploader;
    private VCTrace mVCTrace;
    private String mVersionInfo;
    private PreloadMediaThread mediaOperateThread;

    /* loaded from: classes6.dex */
    public class DataLoaderCacheFileInfo {
        public String mLocalFilePath = null;
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;

        public DataLoaderCacheFileInfo() {
        }
    }

    /* loaded from: classes6.dex */
    public class DataLoaderCacheInfo {
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public String mLocalFilePath = null;

        public DataLoaderCacheInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class DataLoaderHeartBeat {
        private MyHeartBeatTask mHbTask;
        private Timer mHbTimer;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public class MyHeartBeatTask extends TimerTask {
            private AVMDLDataLoader mDataLoader;

            public MyHeartBeatTask(AVMDLDataLoader aVMDLDataLoader) {
                this.mDataLoader = aVMDLDataLoader;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    AVMDLDataLoader aVMDLDataLoader = this.mDataLoader;
                    if (aVMDLDataLoader != null) {
                        aVMDLDataLoader.onLogInfo(70, 0, aVMDLDataLoader.getStringValue(1011));
                    }
                } catch (Exception e10) {
                    TTVideoEngineLog.d(e10);
                }
            }
        }

        private DataLoaderHeartBeat() {
            this.mHbTimer = null;
            this.mHbTask = null;
        }

        public void start(AVMDLDataLoader aVMDLDataLoader, int i10) {
            if (this.mHbTask == null && this.mHbTimer == null && i10 > 0) {
                this.mHbTask = new MyHeartBeatTask(aVMDLDataLoader);
                Timer timer = new Timer();
                this.mHbTimer = timer;
                long j10 = i10;
                timer.schedule(this.mHbTask, j10, j10);
            }
        }

        public void stop() {
            Timer timer = this.mHbTimer;
            if (timer != null) {
                timer.cancel();
            }
        }
    }

    /* loaded from: classes6.dex */
    public class DataLoaderTaskLoadProgress {
        public String mVideoId = null;
        public int mTaskType = 0;
        public List<CacheInfo> mCacheInfos = null;
        protected boolean mSeparateAudioVideo = false;

        /* loaded from: classes6.dex */
        public class CacheInfo {
            public String mKey = null;
            public long mMediaSize = 0;
            public long mPreloadSize = 0;
            public Resolution mResolution = Resolution.Undefine;
            public List<CacheRange> mCacheRanges = null;
            public String mLocalFilePath = null;
            public Error mError = null;

            /* loaded from: classes6.dex */
            public class CacheRange {
                public long mOffset = 0;
                public long mSize = 0;

                public CacheRange() {
                }
            }

            public CacheInfo() {
            }

            public boolean finished() {
                long j10;
                CacheRange cacheRange;
                long j11 = this.mPreloadSize;
                if (j11 > 0) {
                    j10 = Math.min(j11, this.mMediaSize);
                } else {
                    j10 = this.mMediaSize;
                }
                List<CacheRange> list = this.mCacheRanges;
                if (list != null) {
                    cacheRange = list.get(list.size() - 1);
                } else {
                    cacheRange = null;
                }
                if (this.mError != null) {
                    return true;
                }
                if (cacheRange != null && this.mMediaSize > 0 && cacheRange.mOffset + cacheRange.mSize >= j10) {
                    return true;
                }
                return false;
            }

            public long getCacheSize() {
                List<CacheRange> list = this.mCacheRanges;
                if (list != null && list.size() > 0) {
                    List<CacheRange> list2 = this.mCacheRanges;
                    return list2.get(list2.size() - 1).mSize;
                }
                return 0L;
            }

            void setCacheSize(long j10) {
                if (this.mCacheRanges == null) {
                    this.mCacheRanges = new ArrayList();
                }
                if (this.mCacheRanges.size() == 0) {
                    this.mCacheRanges.add(new CacheRange());
                }
                this.mCacheRanges.get(0).mOffset = 0L;
                this.mCacheRanges.get(0).mSize = j10;
            }
        }

        public DataLoaderTaskLoadProgress() {
        }

        private CacheInfo getCacheInfo(String str) {
            List<CacheInfo> list;
            if (!TextUtils.isEmpty(str) && (list = this.mCacheInfos) != null) {
                for (CacheInfo cacheInfo : list) {
                    if (cacheInfo.mKey.equals(str)) {
                        return cacheInfo;
                    }
                }
            }
            return null;
        }

        public long getTotalCacheSize() {
            long j10 = 0;
            if (this.mCacheInfos != null) {
                for (int i10 = 0; i10 < this.mCacheInfos.size(); i10++) {
                    j10 += this.mCacheInfos.get(i10).getCacheSize();
                }
            }
            return j10;
        }

        public boolean isCacheEnd() {
            int i10;
            boolean z10 = true;
            if (this.mCacheInfos != null) {
                i10 = 0;
                for (int i11 = 0; i11 < this.mCacheInfos.size(); i11++) {
                    CacheInfo cacheInfo = this.mCacheInfos.get(i11);
                    if (cacheInfo != null && !cacheInfo.finished()) {
                        z10 = false;
                    } else {
                        i10++;
                    }
                }
            } else {
                i10 = 0;
            }
            if (!this.mSeparateAudioVideo) {
                if (z10) {
                    return true;
                }
                if (i10 >= 1 && this.mTaskType == 1) {
                    return true;
                }
                return false;
            } else if (z10) {
                return true;
            } else {
                if (i10 >= 2 && this.mTaskType == 1) {
                    return true;
                }
                return false;
            }
        }

        public boolean isPreloadComplete() {
            if (this.mTaskType != 2) {
                TTVideoEngineLog.d(DataLoaderHelper.TAG, "task is not a preload task");
                return false;
            }
            if (this.mCacheInfos != null) {
                for (int i10 = 0; i10 < this.mCacheInfos.size(); i10++) {
                    CacheInfo cacheInfo = this.mCacheInfos.get(i10);
                    if (cacheInfo != null && !cacheInfo.finished()) {
                        return false;
                    }
                }
            }
            return true;
        }

        public void onError(String str, Error error) {
            CacheInfo cacheInfo = getCacheInfo(str);
            if (cacheInfo != null) {
                cacheInfo.mError = error;
            }
        }

        public void setUp(DataLoaderTaskItem dataLoaderTaskItem) {
            this.mVideoId = dataLoaderTaskItem.mVideoId;
            if (this.mCacheInfos == null) {
                this.mCacheInfos = new ArrayList();
            }
            Iterator<DataLoaderTaskItem.TrackItem> it = dataLoaderTaskItem.mTracks.iterator();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                boolean z10 = true;
                if (!it.hasNext()) {
                    break;
                }
                DataLoaderTaskItem.TrackItem next = it.next();
                CacheInfo cacheInfo = getCacheInfo(next.mTaskKey);
                if (cacheInfo == null) {
                    cacheInfo = new CacheInfo();
                    z10 = false;
                }
                cacheInfo.mKey = next.mTaskKey;
                cacheInfo.mMediaSize = next.mMediaSize;
                cacheInfo.mResolution = next.mUsingResolution;
                cacheInfo.setCacheSize(next.mCacheSize);
                cacheInfo.mLocalFilePath = next.mLocalFilePath;
                cacheInfo.mPreloadSize = next.mPreSize;
                VideoInfo videoInfo = next.mVideoInfo;
                if (videoInfo != null) {
                    if (videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                        i11++;
                    } else if (next.mVideoInfo.getMediatype() == VideoRef.TYPE_AUDIO) {
                        i10++;
                    }
                }
                if (!z10) {
                    this.mCacheInfos.add(cacheInfo);
                }
            }
            if (i10 > 0 && i11 > 0) {
                this.mSeparateAudioVideo = true;
            }
        }
    }

    /* loaded from: classes6.dex */
    public class DataLoaderTaskProgressInfo {
        public String mKey = null;
        public String mVideoId = null;
        public String mLocalFilePath = null;
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public Resolution mResolution = Resolution.Undefine;
        public String mDecryptionKey = null;
        public VideoInfo mUsingVideoInfo = null;
        public int mTaskType = 0;

        public DataLoaderTaskProgressInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Holder {
        private static DataLoaderHelper instance = new DataLoaderHelper();

        private Holder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class MyPreloadTaskCallbackListener implements IPreloadTaskCallbackListener {
        private IPreLoaderItemCallBackListener mCallBackListener;

        MyPreloadTaskCallbackListener(IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
            this.mCallBackListener = iPreLoaderItemCallBackListener;
        }

        @Override // com.bytedance.vcloud.strategy.IPreloadTaskCallbackListener
        public void preloadItemInfo(int i10, String str, String str2) {
            int i11;
            String str3;
            if (this.mCallBackListener != null) {
                if (i10 == 4) {
                    i11 = 3;
                } else {
                    i11 = 5;
                    if (i10 != 5) {
                        if (i10 == 2) {
                            i11 = 8;
                        } else if (i10 == 1) {
                            i11 = 7;
                        } else if (i10 == 6) {
                            i11 = 9;
                        } else {
                            i11 = 2;
                        }
                    }
                }
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(i11);
                if (!TextUtils.isEmpty(str) && str.contains(",")) {
                    String[] split = str.split(",");
                    if (split.length >= 3) {
                        long longValue = Long.valueOf(split[0]).longValue();
                        long longValue2 = Long.valueOf(split[1]).longValue();
                        String str4 = split[2];
                        if (split.length >= 4) {
                            str3 = split[3];
                        } else {
                            str3 = "";
                        }
                        DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = new DataLoaderTaskProgressInfo();
                        preLoaderItemCallBackInfo.preloadDataInfo = dataLoaderTaskProgressInfo;
                        dataLoaderTaskProgressInfo.mKey = str4;
                        dataLoaderTaskProgressInfo.mCacheSizeFromZero = longValue;
                        dataLoaderTaskProgressInfo.mMediaSize = longValue2;
                        dataLoaderTaskProgressInfo.mLocalFilePath = str3;
                    }
                } else if (i11 == 8) {
                    preLoaderItemCallBackInfo.fileHash = str;
                }
                preLoaderItemCallBackInfo.businessContext = str2;
                this.mCallBackListener.preloadItemInfo(preLoaderItemCallBackInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class MySelectBitrateListener implements ISelectBitrateListener {
        private ISelectBitrateCallback mCallback;

        MySelectBitrateListener(ISelectBitrateCallback iSelectBitrateCallback) {
            this.mCallback = iSelectBitrateCallback;
        }

        @Override // com.bytedance.vcloud.strategy.ISelectBitrateListener
        public String selectBitrateJsonString(String str, int i10) {
            Map<String, Integer> selectBitrate;
            ISelectBitrateCallback iSelectBitrateCallback = this.mCallback;
            if (iSelectBitrateCallback != null && (selectBitrate = iSelectBitrateCallback.selectBitrate(i10)) != null) {
                return new JSONObject(selectBitrate).toString();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class MyTaskListener implements TaskListener {
        private final WeakReference<DataLoaderHelper> mDataLoader;

        public MyTaskListener(DataLoaderHelper dataLoaderHelper) {
            this.mDataLoader = new WeakReference<>(dataLoaderHelper);
        }

        @Override // com.ss.ttvideoengine.DataLoaderHelper.TaskListener
        public void taskFinished(DataLoaderTaskItem dataLoaderTaskItem) {
            CodecStrategyAdapter codecStrategyAdapter;
            DataLoaderHelper dataLoaderHelper = this.mDataLoader.get();
            if (dataLoaderHelper == null || dataLoaderTaskItem == null) {
                return;
            }
            if (dataLoaderTaskItem.mResponseData != null && dataLoaderTaskItem.getCallBackListener() != null) {
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(4);
                preLoaderItemCallBackInfo.fetchVideoModel = (VideoModel) dataLoaderTaskItem.mResponseData;
                dataLoaderTaskItem.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
                PreloaderVidItem preloaderVidItem = dataLoaderTaskItem.mVidItem;
                if (preloaderVidItem != null) {
                    dataLoaderTaskItem.mSetResolution = preloaderVidItem.mResolution;
                }
            }
            PreloaderVidItem preloaderVidItem2 = dataLoaderTaskItem.mVidItem;
            if (preloaderVidItem2 != null && preloaderVidItem2.getFetchEndListener() != null) {
                dataLoaderTaskItem.mVidItem.getFetchEndListener().fetchEnd((VideoModel) dataLoaderTaskItem.mResponseData, dataLoaderTaskItem.mResponseError);
                dataLoaderTaskItem.mSetResolution = dataLoaderTaskItem.mVidItem.mResolution;
            }
            PreloaderURLItem preloaderURLItem = dataLoaderTaskItem.mURLItem;
            if (preloaderURLItem != null && (codecStrategyAdapter = preloaderURLItem.mAdapter) != null && codecStrategyAdapter.isFetchSmartUrl()) {
                dataLoaderTaskItem.mSetResolution = CodecStrategy.SmartUrlVod.findTargetResolution(dataLoaderTaskItem.mResponseData);
                dataLoaderHelper._exectTask(dataLoaderTaskItem);
            }
            PreloaderVidItem preloaderVidItem3 = dataLoaderTaskItem.mVidItem;
            if (preloaderVidItem3 != null) {
                dataLoaderTaskItem.mSetResolution = BestResolution.findDefaultResolution(dataLoaderTaskItem.mResponseData, preloaderVidItem3.mResolution);
            }
            PreloaderVidItem preloaderVidItem4 = dataLoaderTaskItem.mVidItem;
            if (preloaderVidItem4 != null && !preloaderVidItem4.getOnlyFetchVideoModel()) {
                dataLoaderHelper._exectTask(dataLoaderTaskItem);
            }
            if (dataLoaderTaskItem.mResponseError != null) {
                if (dataLoaderHelper.mListener != null) {
                    dataLoaderHelper.mListener.dataLoaderError(dataLoaderTaskItem.mVideoId, 1, dataLoaderTaskItem.mResponseError);
                }
                if (dataLoaderTaskItem.getCallBackListener() != null) {
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo2 = new PreLoaderItemCallBackInfo(3);
                    preLoaderItemCallBackInfo2.preloadError = dataLoaderTaskItem.mResponseError;
                    dataLoaderTaskItem.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class PreloadMediaThread {
        private Handler mHandler;
        private HandlerThread mHandlerThread;

        public PreloadMediaThread() {
            try {
                HandlerThread handlerThread = new HandlerThread("vclould.engine.preload.media");
                this.mHandlerThread = handlerThread;
                handlerThread.start();
                this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.ss.ttvideoengine.DataLoaderHelper.PreloadMediaThread.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        if (message == null) {
                            return;
                        }
                        try {
                            Object obj = message.obj;
                            if (!(obj instanceof ArrayList)) {
                                TTVideoEngineLog.d(DataLoaderHelper.TAG, "[preload] obj should instance of ArrayList");
                                return;
                            }
                            ArrayList arrayList = (ArrayList) obj;
                            if (arrayList == null) {
                                TTVideoEngineLog.d(DataLoaderHelper.TAG, "[preload] obj should instance of ArrayList");
                                return;
                            }
                            DataLoaderHelper dataLoaderHelper = (DataLoaderHelper) arrayList.get(0);
                            switch (message.what) {
                                case 111:
                                    if (arrayList.size() == 3) {
                                        PreloadModelMedia preloadModelMedia = (PreloadModelMedia) arrayList.get(1);
                                        String str = (String) arrayList.get(2);
                                        if (dataLoaderHelper != null) {
                                            dataLoaderHelper._doMl_addMedia(preloadModelMedia, str);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                case 112:
                                    if (arrayList.size() == 3) {
                                        String str2 = (String) arrayList.get(1);
                                        String str3 = (String) arrayList.get(2);
                                        if (dataLoaderHelper != null) {
                                            dataLoaderHelper._doMl_removeMedia(str2, str3);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                case 113:
                                    if (arrayList.size() == 3) {
                                        String str4 = (String) arrayList.get(1);
                                        int intValue = ((Integer) arrayList.get(2)).intValue();
                                        if (dataLoaderHelper != null) {
                                            dataLoaderHelper._doMl_removeAllMedias(str4, intValue);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                case 114:
                                    if (arrayList.size() == 3) {
                                        String str5 = (String) arrayList.get(1);
                                        int intValue2 = ((Integer) arrayList.get(2)).intValue();
                                        if (dataLoaderHelper != null) {
                                            StrategyHelper.helper().getCenter().focusMedia(str5, intValue2);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                case 115:
                                    if (arrayList.size() == 2) {
                                        PreloadModelMedia preloadModelMedia2 = (PreloadModelMedia) arrayList.get(1);
                                        if (dataLoaderHelper != null) {
                                            dataLoaderHelper._doMl_addPriorityTask(preloadModelMedia2);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                case 116:
                                    if (arrayList.size() == 2) {
                                        String str6 = (String) arrayList.get(1);
                                        if (dataLoaderHelper != null) {
                                            dataLoaderHelper._doMl_removePriorityTask(str6);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        } catch (Throwable th2) {
                            TTVideoEngineLog.d(th2);
                        }
                    }
                };
            } catch (Throwable th2) {
                TTVideoEngineLog.d(th2);
                this.mHandlerThread = null;
                this.mHandler = null;
            }
        }

        public void postMessage(ArrayList<Object> arrayList, int i10) {
            if (this.mHandler != null && this.mHandlerThread != null) {
                Message obtain = Message.obtain();
                obtain.what = i10;
                obtain.obj = arrayList;
                this.mHandler.sendMessage(obtain);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public interface TaskListener {
        void taskFinished(DataLoaderTaskItem dataLoaderTaskItem);
    }

    private String[] _addP2pFlag(boolean z10, String[] strArr) {
        if (!z10) {
            return strArr;
        }
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (!TextUtils.isEmpty(strArr[i10])) {
                strArr[i10] = TTHelper.appendQueryString(strArr[i10], "p2p=0");
            }
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0184  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _addTask(java.lang.String r7, java.lang.String r8, long r9, com.ss.ttvideoengine.PreloaderVidItem r11, com.ss.ttvideoengine.PreloaderVideoModelItem r12, com.ss.ttvideoengine.PreloaderURLItem r13) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._addTask(java.lang.String, java.lang.String, long, com.ss.ttvideoengine.PreloaderVidItem, com.ss.ttvideoengine.PreloaderVideoModelItem, com.ss.ttvideoengine.PreloaderURLItem):void");
    }

    private String _apiStringForVid(PreloaderVidItem preloaderVidItem) {
        if (preloaderVidItem == null) {
            return null;
        }
        return new FetcherApiHelper(preloaderVidItem.getAuthorization(), preloaderVidItem.mApiVersion, preloaderVidItem.mDashEnable, preloaderVidItem.mHlsEnable, preloaderVidItem.mEncryptEnable, preloaderVidItem.mCodecType).getAPIString();
    }

    private void _cacheEndNotifyEngine(DataLoaderTaskItem dataLoaderTaskItem) {
        ArrayList<DataLoaderTaskItem> array = this.mAllPlayTasks.toArray();
        for (int i10 = 0; i10 < array.size(); i10++) {
            DataLoaderTaskItem dataLoaderTaskItem2 = array.get(i10);
            if (!TextUtils.isEmpty(dataLoaderTaskItem2.mVideoId) && !TextUtils.isEmpty(dataLoaderTaskItem.mVideoId) && dataLoaderTaskItem2.mVideoId.equals(dataLoaderTaskItem.mVideoId)) {
                return;
            }
        }
        this.mLock.lock(ABLock.TYPE_VOID);
        this.mPreloadUtil.notifyCacheEnd(dataLoaderTaskItem.mVideoId);
        this.mLock.unlock(ABLock.TYPE_VOID);
        ArrayList<WeakReference<TTVideoEngine>> _getEnginesByRawKey = _getEnginesByRawKey(dataLoaderTaskItem.mVideoId);
        if (_getEnginesByRawKey != null && _getEnginesByRawKey.size() != 0) {
            for (int i11 = 0; i11 < _getEnginesByRawKey.size(); i11++) {
                WeakReference<TTVideoEngine> weakReference = _getEnginesByRawKey.get(i11);
                if (weakReference.get() != null) {
                    weakReference.get().notifyCacheEnd();
                }
            }
        }
    }

    private String _constructEnginePortaint(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("enable_engineportaint", this.mConfigure.mEnableEnginePortrait);
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            TTVideoEngineLog.d(e10);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _doMl_addMedia(com.ss.ttvideoengine.preload.PreloadModelMedia r11, java.lang.String r12) {
        /*
            r10 = this;
            if (r11 == 0) goto L88
            com.ss.ttvideoengine.strategrycenter.ISelectBitrateCallback r0 = r11.getSelectCallback()
            r1 = 0
            if (r0 == 0) goto L14
            com.ss.ttvideoengine.DataLoaderHelper$MySelectBitrateListener r0 = new com.ss.ttvideoengine.DataLoaderHelper$MySelectBitrateListener
            com.ss.ttvideoengine.strategrycenter.ISelectBitrateCallback r2 = r11.getSelectCallback()
            r0.<init>(r2)
            r5 = r0
            goto L15
        L14:
            r5 = r1
        L15:
            com.ss.ttvideoengine.IPreLoaderItemCallBackListener r0 = r11.getCallBackListener()
            if (r0 == 0) goto L24
            com.ss.ttvideoengine.DataLoaderHelper$MyPreloadTaskCallbackListener r1 = new com.ss.ttvideoengine.DataLoaderHelper$MyPreloadTaskCallbackListener
            com.ss.ttvideoengine.IPreLoaderItemCallBackListener r0 = r11.getCallBackListener()
            r1.<init>(r0)
        L24:
            r6 = r1
            com.ss.ttvideoengine.model.IVideoModel r0 = r11.mVideoModel
            java.lang.String r0 = r0.toMediaInfoJsonString()
            boolean r1 = r11.isNeedConvertStrategyInfo()
            if (r1 == 0) goto L3d
            java.lang.String r1 = r11.toStrategyInfo()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L3d
            r4 = r1
            goto L3e
        L3d:
            r4 = r0
        L3e:
            int r0 = r10.mEnableCheckPreloadUrls
            r1 = 1
            if (r0 != r1) goto L79
            com.ss.ttvideoengine.model.IVideoModel r0 = r11.mVideoModel
            if (r0 == 0) goto L79
            java.util.List r0 = r0.getVideoInfoList()
            if (r0 == 0) goto L79
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L79
            java.util.Iterator r0 = r0.iterator()
        L57:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L79
            java.lang.Object r1 = r0.next()
            com.ss.ttvideoengine.model.VideoInfo r1 = (com.ss.ttvideoengine.model.VideoInfo) r1
            r2 = 16
            java.lang.String[] r1 = r1.getValueStrArr(r2)
            int r2 = r1.length
            r3 = 0
        L6b:
            if (r3 >= r2) goto L57
            r7 = r1[r3]
            boolean r7 = r10._supportProxy(r7)
            if (r7 != 0) goto L76
            return
        L76:
            int r3 = r3 + 1
            goto L6b
        L79:
            com.ss.ttvideoengine.strategrycenter.StrategyHelper r0 = com.ss.ttvideoengine.strategrycenter.StrategyHelper.helper()
            com.bytedance.vcloud.strategy.StrategyCenter r3 = r0.getCenter()
            boolean r8 = r11.isLast
            r9 = 0
            r7 = r12
            r3.addMedia(r4, r5, r6, r7, r8, r9)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._doMl_addMedia(com.ss.ttvideoengine.preload.PreloadModelMedia, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _doMl_addPriorityTask(PreloadModelMedia preloadModelMedia) {
        MySelectBitrateListener mySelectBitrateListener;
        MyPreloadTaskCallbackListener myPreloadTaskCallbackListener = null;
        if (preloadModelMedia.getSelectCallback() != null) {
            mySelectBitrateListener = new MySelectBitrateListener(preloadModelMedia.getSelectCallback());
        } else {
            mySelectBitrateListener = null;
        }
        if (preloadModelMedia.getCallBackListener() != null) {
            myPreloadTaskCallbackListener = new MyPreloadTaskCallbackListener(preloadModelMedia.getCallBackListener());
        }
        StrategyHelper.helper().getCenter().addPriorityTask(preloadModelMedia.toStrategyInfo(), mySelectBitrateListener, myPreloadTaskCallbackListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _doMl_removeAllMedias(String str, int i10) {
        StrategyHelper.helper().getCenter().removeAllMedia(str, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _doMl_removeMedia(String str, String str2) {
        StrategyHelper.helper().getCenter().removeMedia(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _doMl_removePriorityTask(String str) {
        StrategyHelper.helper().getCenter().removePriorityTask(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.ttvideoengine.utils.Error _errorWithCode(int r6, long r7, java.lang.String r9) {
        /*
            r5 = this;
            r0 = -5000(0xffffffffffffec78, float:NaN)
            if (r6 == r0) goto L44
            r0 = -4000(0xfffffffffffff060, float:NaN)
            if (r6 == r0) goto L41
            r0 = -2000(0xfffffffffffff830, float:NaN)
            if (r6 == r0) goto L3e
            r0 = -3001(0xfffffffffffff447, float:NaN)
            if (r6 == r0) goto L39
            r0 = -3000(0xfffffffffffff448, float:NaN)
            if (r6 == r0) goto L25
            switch(r6) {
                case -1002: goto L22;
                case -1001: goto L1f;
                case -1000: goto L1c;
                default: goto L17;
            }
        L17:
            java.lang.String r0 = "task fail. reply task error."
        L1a:
            r1 = r6
            goto L4a
        L1c:
            java.lang.String r0 = "create preload task fail."
            goto L1a
        L1f:
            java.lang.String r0 = "add the same key task."
            goto L1a
        L22:
            java.lang.String r0 = "Waiting for too many tasks, > 20"
            goto L1a
        L25:
            android.content.Context r0 = r5.mContext
            boolean r0 = com.ss.ttvideoengine.net.NetUtils.isNetAvailable(r0)
            if (r0 != 0) goto L30
            r0 = -9960(0xffffffffffffd918, float:NaN)
            goto L32
        L30:
            r0 = -9945(0xffffffffffffd927, float:NaN)
        L32:
            java.lang.String r1 = "url invalid. response status code >= 400"
        L35:
            r4 = r1
            r1 = r0
            r0 = r4
            goto L4a
        L39:
            r0 = -9944(0xffffffffffffd928, float:NaN)
            java.lang.String r1 = "server invalid. response status code >= 500"
            goto L35
        L3e:
            java.lang.String r0 = "media data content length invalid"
            goto L1a
        L41:
            java.lang.String r0 = "request invalid."
            goto L1a
        L44:
            r0 = -9948(0xffffffffffffd924, float:NaN)
            java.lang.String r1 = "write file fail."
            goto L35
        L4a:
            r2 = 3
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 != 0) goto L53
            java.lang.String r7 = "kTTVideoErrorDomainDownload"
            goto L55
        L53:
            java.lang.String r7 = "kTTVideoErrorDomainDataLoaderPreload"
        L55:
            com.ss.ttvideoengine.utils.Error r8 = new com.ss.ttvideoengine.utils.Error
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "key = "
            r2.append(r3)
            r2.append(r9)
            java.lang.String r9 = ", reason = "
            r2.append(r9)
            r2.append(r0)
            java.lang.String r9 = r2.toString()
            r8.<init>(r7, r1, r6, r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._errorWithCode(int, long, java.lang.String):com.ss.ttvideoengine.utils.Error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0632 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0221  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _exectTask(com.ss.ttvideoengine.DataLoaderHelper.DataLoaderTaskItem r52) {
        /*
            Method dump skipped, instructions count: 1990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._exectTask(com.ss.ttvideoengine.DataLoaderHelper$DataLoaderTaskItem):void");
    }

    @Nullable
    private ArrayList<WeakReference<TTVideoEngine>> _getEnginesByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.mEngineLock.lock();
            ArrayList<WeakReference<TTVideoEngine>> arrayList = this.mAllUsingEngies.get(str);
            if (arrayList == null) {
                return null;
            }
            ArrayList<WeakReference<TTVideoEngine>> arrayList2 = new ArrayList<>();
            arrayList2.addAll(arrayList);
            TTVideoEngineLog.i(TAG, "get engine ref,rawKey = " + str + " engine ref count: " + arrayList2.size());
            return arrayList2;
        } finally {
            this.mEngineLock.unlock();
        }
    }

    private void _ml_addMedia(PreloadModelMedia preloadModelMedia, String str) {
        if (preloadModelMedia != null) {
            if (this.mediaOperateThread != null) {
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(this);
                arrayList.add(preloadModelMedia);
                arrayList.add(str);
                this.mediaOperateThread.postMessage(arrayList, 111);
                return;
            }
            _doMl_addMedia(preloadModelMedia, str);
        }
    }

    private void _ml_removeAllMedias(String str, int i10) {
        if (this.mediaOperateThread != null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(this);
            arrayList.add(str);
            arrayList.add(Integer.valueOf(i10));
            this.mediaOperateThread.postMessage(arrayList, 113);
            return;
        }
        _doMl_removeAllMedias(str, i10);
    }

    private void _ml_removeMedia(String str, String str2) {
        if (this.mediaOperateThread != null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(this);
            arrayList.add(str);
            arrayList.add(str2);
            this.mediaOperateThread.postMessage(arrayList, 112);
            return;
        }
        _doMl_removeMedia(str, str2);
    }

    private void _notifyPreloadCancel(DataLoaderTaskItem dataLoaderTaskItem) {
        if (dataLoaderTaskItem == null || dataLoaderTaskItem.mDidCanceled) {
            return;
        }
        dataLoaderTaskItem.mDidCanceled = true;
        if (dataLoaderTaskItem.getCallBackListener() != null) {
            dataLoaderTaskItem.getCallBackListener().preloadItemInfo(new PreLoaderItemCallBackInfo(5));
        }
    }

    private JSONObject _onHeartBeatFire(JSONObject jSONObject) {
        try {
            long playWastDataSize = VideoInfoCollector.getInstance().getPlayWastDataSize();
            if (playWastDataSize > 0) {
                jSONObject.put("_play_waste_data", playWastDataSize);
            }
            long playConsumedSize = VideoInfoCollector.getInstance().getPlayConsumedSize();
            if (playConsumedSize > 0) {
                jSONObject.put("_play_consumed_data", playConsumedSize);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void _prepareUrlInfo(VideoInfo videoInfo, DataLoaderTaskItem dataLoaderTaskItem) {
        boolean z10;
        String cacheFilePath;
        if (videoInfo != null && dataLoaderTaskItem != null) {
            String[] valueStrArr = videoInfo.getValueStrArr(16);
            String valueStr = videoInfo.getValueStr(15);
            DataLoaderTaskItem.TrackItem addTrackItemByKey = dataLoaderTaskItem.addTrackItemByKey(valueStr);
            if (valueStrArr != null && valueStrArr.length >= 1) {
                String[] strArr = (String[]) valueStrArr.clone();
                PreloaderVidItem preloaderVidItem = dataLoaderTaskItem.mVidItem;
                if (preloaderVidItem != null) {
                    z10 = preloaderVidItem.mForbidP2p;
                } else {
                    PreloaderVideoModelItem preloaderVideoModelItem = dataLoaderTaskItem.mVideoModelItem;
                    if (preloaderVideoModelItem != null) {
                        z10 = preloaderVideoModelItem.mForbidP2p;
                    } else {
                        z10 = false;
                    }
                }
                String[] _addP2pFlag = _addP2pFlag(z10, strArr);
                PreloaderVidItem preloaderVidItem2 = dataLoaderTaskItem.mVidItem;
                String str = null;
                if (preloaderVidItem2 != null && preloaderVidItem2.getFilePathListener() != null && !TextUtils.isEmpty(valueStr)) {
                    cacheFilePath = dataLoaderTaskItem.mVidItem.getFilePathListener().cacheFilePath(dataLoaderTaskItem.mVideoId, videoInfo);
                    if (this.mDisableFilePathCheck == 0) {
                        if (!TextUtils.isEmpty(cacheFilePath) && cacheFilePath.contains(valueStr)) {
                            str = cacheFilePath;
                        }
                        if (!TextUtils.isEmpty(str)) {
                            valueStr = TTHelper.keyFromFilePath(this.mContext, str);
                        }
                    }
                    str = cacheFilePath;
                } else {
                    PreloaderVideoModelItem preloaderVideoModelItem2 = dataLoaderTaskItem.mVideoModelItem;
                    if (preloaderVideoModelItem2 != null && preloaderVideoModelItem2.getFilePathListener() != null && !TextUtils.isEmpty(valueStr)) {
                        cacheFilePath = dataLoaderTaskItem.mVideoModelItem.getFilePathListener().cacheFilePath(dataLoaderTaskItem.mVideoId, videoInfo);
                        if (this.mDisableFilePathCheck == 0) {
                            if (!TextUtils.isEmpty(cacheFilePath) && cacheFilePath.contains(valueStr)) {
                                str = cacheFilePath;
                            }
                            if (!TextUtils.isEmpty(str)) {
                                valueStr = TTHelper.keyFromFilePath(this.mContext, str);
                            }
                        }
                        str = cacheFilePath;
                    }
                }
                if (addTrackItemByKey == null) {
                    addTrackItemByKey = dataLoaderTaskItem.addTrackItemByKey(valueStr);
                }
                if (addTrackItemByKey == null) {
                    dataLoaderTaskItem._notifyError(Error.PreloadInvalidParameter);
                    return;
                }
                addTrackItemByKey.mTaskKey = valueStr;
                addTrackItemByKey.mVideoInfo = videoInfo;
                addTrackItemByKey.mDecryptionKey = videoInfo.getValueStr(5);
                addTrackItemByKey.mUsingResolution = videoInfo.getResolution();
                addTrackItemByKey.mUrls = _addP2pFlag;
                addTrackItemByKey.mLocalFilePath = str;
                addTrackItemByKey.mExternalInfo = MDLExtraInfoHelper.createMDLExtraInfo(videoInfo, dataLoaderTaskItem);
                TTVideoEngineLog.d(TAG, "[preload] prepare url info. videoId = " + dataLoaderTaskItem.mVideoId + ", key is " + valueStr + ", resolution = " + addTrackItemByKey.mUsingResolution.toString());
                return;
            }
            TTVideoEngineLog.e(TAG, "[preload] url info, urls info invalid");
            dataLoaderTaskItem._notifyError(Error.PreloadInvalidParameter);
            return;
        }
        TTVideoEngineLog.e(TAG, "[preload] prepare url info fail. info or taskItem is null");
    }

    private DataLoaderCacheInfo _processCacheInfo(String str) {
        DataLoaderCacheInfo dataLoaderCacheInfo = null;
        if (str == null) {
            return null;
        }
        String[] split = str.split(",");
        if (split.length >= 4) {
            dataLoaderCacheInfo = new DataLoaderCacheInfo();
            dataLoaderCacheInfo.mLocalFilePath = split[3];
            if (!TextUtils.isEmpty(split[0])) {
                dataLoaderCacheInfo.mCacheSizeFromZero = Long.valueOf(split[0]).longValue();
            }
            if (!TextUtils.isEmpty(split[1])) {
                dataLoaderCacheInfo.mMediaSize = Long.valueOf(split[1]).longValue();
            }
        }
        return dataLoaderCacheInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0204 A[Catch: Exception -> 0x0057, TryCatch #0 {Exception -> 0x0057, blocks: (B:11:0x001e, B:14:0x003c, B:16:0x0040, B:20:0x005a, B:22:0x0062, B:23:0x0064, B:28:0x0071, B:30:0x0079, B:32:0x0093, B:34:0x00a6, B:35:0x00bc, B:38:0x00c2, B:40:0x00d7, B:42:0x00e8, B:44:0x00ec, B:50:0x0110, B:52:0x0116, B:55:0x0120, B:57:0x0128, B:60:0x0130, B:73:0x0171, B:77:0x017d, B:79:0x0187, B:80:0x018c, B:83:0x0193, B:86:0x019e, B:88:0x01a2, B:92:0x01bd, B:94:0x01d2, B:96:0x01d6, B:97:0x01d9, B:100:0x01e8, B:104:0x01f2, B:107:0x01f8, B:109:0x0204, B:110:0x021b, B:113:0x0244, B:114:0x026d, B:116:0x0271, B:76:0x017b, B:63:0x0153, B:71:0x0167, B:66:0x015a, B:45:0x00ef, B:47:0x00f7, B:49:0x010e), top: B:120:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0271 A[Catch: Exception -> 0x0057, TRY_LEAVE, TryCatch #0 {Exception -> 0x0057, blocks: (B:11:0x001e, B:14:0x003c, B:16:0x0040, B:20:0x005a, B:22:0x0062, B:23:0x0064, B:28:0x0071, B:30:0x0079, B:32:0x0093, B:34:0x00a6, B:35:0x00bc, B:38:0x00c2, B:40:0x00d7, B:42:0x00e8, B:44:0x00ec, B:50:0x0110, B:52:0x0116, B:55:0x0120, B:57:0x0128, B:60:0x0130, B:73:0x0171, B:77:0x017d, B:79:0x0187, B:80:0x018c, B:83:0x0193, B:86:0x019e, B:88:0x01a2, B:92:0x01bd, B:94:0x01d2, B:96:0x01d6, B:97:0x01d9, B:100:0x01e8, B:104:0x01f2, B:107:0x01f8, B:109:0x0204, B:110:0x021b, B:113:0x0244, B:114:0x026d, B:116:0x0271, B:76:0x017b, B:63:0x0153, B:71:0x0167, B:66:0x015a, B:45:0x00ef, B:47:0x00f7, B:49:0x010e), top: B:120:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017b A[Catch: Exception -> 0x0057, TryCatch #0 {Exception -> 0x0057, blocks: (B:11:0x001e, B:14:0x003c, B:16:0x0040, B:20:0x005a, B:22:0x0062, B:23:0x0064, B:28:0x0071, B:30:0x0079, B:32:0x0093, B:34:0x00a6, B:35:0x00bc, B:38:0x00c2, B:40:0x00d7, B:42:0x00e8, B:44:0x00ec, B:50:0x0110, B:52:0x0116, B:55:0x0120, B:57:0x0128, B:60:0x0130, B:73:0x0171, B:77:0x017d, B:79:0x0187, B:80:0x018c, B:83:0x0193, B:86:0x019e, B:88:0x01a2, B:92:0x01bd, B:94:0x01d2, B:96:0x01d6, B:97:0x01d9, B:100:0x01e8, B:104:0x01f2, B:107:0x01f8, B:109:0x0204, B:110:0x021b, B:113:0x0244, B:114:0x026d, B:116:0x0271, B:76:0x017b, B:63:0x0153, B:71:0x0167, B:66:0x015a, B:45:0x00ef, B:47:0x00f7, B:49:0x010e), top: B:120:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0187 A[Catch: Exception -> 0x0057, TryCatch #0 {Exception -> 0x0057, blocks: (B:11:0x001e, B:14:0x003c, B:16:0x0040, B:20:0x005a, B:22:0x0062, B:23:0x0064, B:28:0x0071, B:30:0x0079, B:32:0x0093, B:34:0x00a6, B:35:0x00bc, B:38:0x00c2, B:40:0x00d7, B:42:0x00e8, B:44:0x00ec, B:50:0x0110, B:52:0x0116, B:55:0x0120, B:57:0x0128, B:60:0x0130, B:73:0x0171, B:77:0x017d, B:79:0x0187, B:80:0x018c, B:83:0x0193, B:86:0x019e, B:88:0x01a2, B:92:0x01bd, B:94:0x01d2, B:96:0x01d6, B:97:0x01d9, B:100:0x01e8, B:104:0x01f2, B:107:0x01f8, B:109:0x0204, B:110:0x021b, B:113:0x0244, B:114:0x026d, B:116:0x0271, B:76:0x017b, B:63:0x0153, B:71:0x0167, B:66:0x015a, B:45:0x00ef, B:47:0x00f7, B:49:0x010e), top: B:120:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01d6 A[Catch: Exception -> 0x0057, TryCatch #0 {Exception -> 0x0057, blocks: (B:11:0x001e, B:14:0x003c, B:16:0x0040, B:20:0x005a, B:22:0x0062, B:23:0x0064, B:28:0x0071, B:30:0x0079, B:32:0x0093, B:34:0x00a6, B:35:0x00bc, B:38:0x00c2, B:40:0x00d7, B:42:0x00e8, B:44:0x00ec, B:50:0x0110, B:52:0x0116, B:55:0x0120, B:57:0x0128, B:60:0x0130, B:73:0x0171, B:77:0x017d, B:79:0x0187, B:80:0x018c, B:83:0x0193, B:86:0x019e, B:88:0x01a2, B:92:0x01bd, B:94:0x01d2, B:96:0x01d6, B:97:0x01d9, B:100:0x01e8, B:104:0x01f2, B:107:0x01f8, B:109:0x0204, B:110:0x021b, B:113:0x0244, B:114:0x026d, B:116:0x0271, B:76:0x017b, B:63:0x0153, B:71:0x0167, B:66:0x015a, B:45:0x00ef, B:47:0x00f7, B:49:0x010e), top: B:120:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _progressInfoString(com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._progressInfoString(com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo, boolean):void");
    }

    private String[] _removeRepeatUrls(String[] strArr) {
        if (strArr != null && strArr.length > 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(strArr[0]);
            for (int i10 = 1; i10 < strArr.length; i10++) {
                String str = strArr[i10];
                Boolean bool = Boolean.TRUE;
                int size = arrayList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (((String) arrayList.get(size)).equals(str)) {
                        bool = Boolean.FALSE;
                        break;
                    } else {
                        size--;
                    }
                }
                if (bool.booleanValue()) {
                    arrayList.add(str);
                }
            }
            String[] strArr2 = new String[arrayList.size()];
            arrayList.toArray(strArr2);
            return strArr2;
        }
        return strArr;
    }

    private void _startExecuteTask() {
        CodecStrategyAdapter codecStrategyAdapter;
        if (this.mInnerDataLoader == null) {
            TTVideoEngineLog.e(TAG, "[preload] need load mdl first.");
            return;
        }
        DataLoaderTaskItem backItem = this.mPreloadTasks.backItem();
        if (backItem != null && this.mExecuteTasks.enqueueItem(backItem)) {
            this.mPreloadTasks.popBackItem();
            PreloaderURLItem preloaderURLItem = backItem.mURLItem;
            if (preloaderURLItem != null && (codecStrategyAdapter = preloaderURLItem.mAdapter) != null && codecStrategyAdapter.isFetchSmartUrl()) {
                _startFetchSmartUrlInfo(backItem);
            } else if (backItem.mResponseData == null && backItem.mURLItem == null) {
                _startFetchVideoInfo(backItem);
            } else {
                _exectTask(backItem);
            }
        }
    }

    private void _startFetchSmartUrlInfo(DataLoaderTaskItem dataLoaderTaskItem) {
        CodecStrategyAdapter codecStrategyAdapter;
        PreloaderURLItem preloaderURLItem = dataLoaderTaskItem.mURLItem;
        if (preloaderURLItem == null || (codecStrategyAdapter = preloaderURLItem.mAdapter) == null) {
            return;
        }
        codecStrategyAdapter.fetchSmartUrlInfo(new DataLoaderTaskItem.MySmartUrlFetcherListener(dataLoaderTaskItem));
    }

    private void _startFetchVideoInfo(DataLoaderTaskItem dataLoaderTaskItem) {
        VideoModelCache.VideoModelCacheInfo videoModelCacheInfo;
        dataLoaderTaskItem.removeVidPlaceholderTrack();
        String _apiStringForVid = _apiStringForVid(dataLoaderTaskItem.mVidItem);
        if (TextUtils.isEmpty(_apiStringForVid)) {
            TTVideoEngineLog.d(TAG, "apiString is null");
            return;
        }
        dataLoaderTaskItem.mApiString = TTVideoEngineUtils.BuildHttpsApi(_apiStringForVid);
        dataLoaderTaskItem.mVidItem.getAuthorization();
        String BuildHttpsApi = TTVideoEngineUtils.BuildHttpsApi(_apiStringForVid);
        synchronized (PreloaderVidItem.class) {
            videoModelCacheInfo = this.mModelCache.get(dataLoaderTaskItem.mVideoId, BuildHttpsApi);
        }
        if (videoModelCacheInfo != null && !videoModelCacheInfo.isExpired) {
            dataLoaderTaskItem.mResponseData = videoModelCacheInfo.model;
            TTVideoEngineLog.i(TAG, String.format("[preload] get videoModel , videoId = %s", dataLoaderTaskItem.mVideoId));
            if (this.mEnableVideoModelHitCacheCallback == 1) {
                if (dataLoaderTaskItem.mResponseData != null && dataLoaderTaskItem.getCallBackListener() != null) {
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(4);
                    preLoaderItemCallBackInfo.fetchVideoModel = (VideoModel) dataLoaderTaskItem.mResponseData;
                    dataLoaderTaskItem.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
                    PreloaderVidItem preloaderVidItem = dataLoaderTaskItem.mVidItem;
                    if (preloaderVidItem != null) {
                        dataLoaderTaskItem.mSetResolution = preloaderVidItem.mResolution;
                    }
                }
                PreloaderVidItem preloaderVidItem2 = dataLoaderTaskItem.mVidItem;
                if (preloaderVidItem2 != null && preloaderVidItem2.getFetchEndListener() != null) {
                    dataLoaderTaskItem.mVidItem.getFetchEndListener().fetchEnd((VideoModel) dataLoaderTaskItem.mResponseData, dataLoaderTaskItem.mResponseError);
                    dataLoaderTaskItem.mSetResolution = dataLoaderTaskItem.mVidItem.mResolution;
                }
            }
            _exectTask(dataLoaderTaskItem);
            return;
        }
        PreloaderVidItem preloaderVidItem3 = dataLoaderTaskItem.mVidItem;
        if (preloaderVidItem3 != null) {
            dataLoaderTaskItem.mFetcher = new VideoInfoFetcher(this.mContext, preloaderVidItem3.getNetClient());
            dataLoaderTaskItem.setFetchListener();
            dataLoaderTaskItem.mFetcher.setResolutionMap(dataLoaderTaskItem.mVidItem.mResolutionMap);
            dataLoaderTaskItem.mFetcher.setVideoID(dataLoaderTaskItem.mVidItem.mVideoId);
            dataLoaderTaskItem.mFetcher.setUseVideoModelCache(true);
            VideoInfoFetcher videoInfoFetcher = dataLoaderTaskItem.mFetcher;
            int i10 = dataLoaderTaskItem.mVidItem.mApiVersion;
            videoInfoFetcher.fetchInfo(BuildHttpsApi, (i10 == 2 || i10 == 4) ? null : null, i10);
        }
    }

    private void _startMDLPreloadTask(DataLoaderTaskItem dataLoaderTaskItem, DataLoaderTaskItem.TrackItem trackItem) {
        boolean z10;
        long j10;
        if (dataLoaderTaskItem != null && trackItem != null) {
            TTVideoEngineLog.i(TAG, "[preload] start mdl preload task.  key = " + trackItem.mTaskKey);
            String str = trackItem.mCustomHeader;
            String str2 = trackItem.mTaskKey;
            PreloaderURLItem preloaderURLItem = dataLoaderTaskItem.mURLItem;
            if (preloaderURLItem != null && preloaderURLItem.getProvider() != null) {
                String proxyQueryProvideMode = proxyQueryProvideMode(str2, dataLoaderTaskItem.mVideoId, dataLoaderTaskItem.mPriorityLevel, 1, dataLoaderTaskItem.mGroupId);
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(proxyQueryProvideMode);
                stringBuffer.append("&header_size=");
                stringBuffer.append(trackItem.mPreloadHeaderSize);
                stringBuffer.append("&timestamp=");
                stringBuffer.append(dataLoaderTaskItem.mURLItem.getStartTimestamp());
                String stringBuffer2 = stringBuffer.toString();
                trackItem.mProxyUrl = stringBuffer2;
                if (!TextUtils.isEmpty(stringBuffer2)) {
                    this.mAllPreloadTasks.popItem(str2);
                    this.mAllPreloadTasks.enqueueItem(dataLoaderTaskItem);
                    long j11 = trackItem.mPreloadOffset;
                    if (j11 > 0 && j11 < trackItem.mPreloadHeaderSize + 102400) {
                        trackItem.mPreSize += j11;
                        trackItem.mPreloadOffset = 0L;
                    }
                    TTVideoEngineLog.i(TAG, "[preload] preload offset " + trackItem.mPreloadOffset + " header size = " + trackItem.mPreloadHeaderSize + " preload size = " + trackItem.mPreSize);
                    if (trackItem.mPreloadOffset > 0) {
                        long j12 = trackItem.mPreloadHeaderSize;
                        if (j12 > 0) {
                            this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) j12);
                        }
                        this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) trackItem.mPreloadOffset, (int) trackItem.mPreSize);
                    } else {
                        this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) trackItem.mPreSize);
                    }
                } else {
                    dataLoaderTaskItem._notifyError(Error.PreloadInvalidParameter);
                }
                TTVideoEngineLog.i(TAG, String.format("[preload] exect preload task by provider mode, key is %s; videoId = %s proxyurl:%s", str2, dataLoaderTaskItem.mVideoId, trackItem.mProxyUrl));
                return;
            }
            String[] strArr = trackItem.mUrls;
            if (strArr != null) {
                IVideoModel iVideoModel = dataLoaderTaskItem.mResponseData;
                boolean z11 = false;
                if (iVideoModel != null) {
                    z10 = iVideoModel.hasFormat(IVideoModel.Format.HLS);
                } else {
                    z10 = false;
                }
                if (strArr.length > 0 && !TextUtils.isEmpty(strArr[0]) && FormatProvider.FormatProviderHolder.isM3u8(strArr[0])) {
                    z10 = true;
                }
                boolean z12 = z10;
                MDLExtraInfoHelper.addPCDNFlag(dataLoaderTaskItem, trackItem);
                MDLExtraInfoHelper.addTags(dataLoaderTaskItem, trackItem);
                String preloadProxyQuery = preloadProxyQuery(str2, dataLoaderTaskItem.mVideoId, trackItem.mPreloadOffset, 0L, strArr, trackItem.mLocalFilePath, trackItem.mExternalInfo, dataLoaderTaskItem.mPriorityLevel, str, z12, null, dataLoaderTaskItem.mGroupId, dataLoaderTaskItem.mPlayIndexGap);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(preloadProxyQuery);
                stringBuffer3.append("&header_size=");
                stringBuffer3.append(trackItem.mPreloadHeaderSize);
                PreloaderVideoModelItem preloaderVideoModelItem = dataLoaderTaskItem.mVideoModelItem;
                if (preloaderVideoModelItem != null) {
                    j10 = preloaderVideoModelItem.getStartTimestamp();
                } else {
                    PreloaderURLItem preloaderURLItem2 = dataLoaderTaskItem.mURLItem;
                    if (preloaderURLItem2 != null) {
                        j10 = preloaderURLItem2.getStartTimestamp();
                    } else {
                        j10 = 0;
                    }
                }
                if (j10 > 0) {
                    stringBuffer3.append("&timestamp=");
                    stringBuffer3.append(j10);
                }
                if (z12) {
                    DataLoaderHelperAdapter.HlsProxyQueryParam hlsProxyQueryParam = new DataLoaderHelperAdapter.HlsProxyQueryParam();
                    VideoInfo videoInfo = trackItem.mVideoInfo;
                    if (videoInfo != null) {
                        hlsProxyQueryParam.urlExpires = videoInfo.mURLExpires;
                    } else {
                        String[] strArr2 = trackItem.mUrlExpireTimes;
                        if (strArr2 != null) {
                            hlsProxyQueryParam.urlExpires = strArr2;
                        }
                    }
                    String buildQuery = hlsProxyQueryParam.buildQuery();
                    if (!TextUtils.isEmpty(buildQuery)) {
                        stringBuffer3.append("&hlsproxyQuery=");
                        stringBuffer3.append(buildQuery);
                    }
                }
                String stringBuffer4 = stringBuffer3.toString();
                trackItem.mProxyUrl = stringBuffer4;
                if (!TextUtils.isEmpty(stringBuffer4)) {
                    this.mAllPreloadTasks.popItem(str2);
                    this.mAllPreloadTasks.enqueueItem(dataLoaderTaskItem);
                    long j13 = trackItem.mPreloadOffset;
                    if (j13 > 0 && j13 < trackItem.mPreloadHeaderSize + 102400) {
                        trackItem.mPreSize += j13;
                        trackItem.mPreloadOffset = 0L;
                    }
                    TTVideoEngineLog.i(TAG, "[preload] preload offset " + trackItem.mPreloadOffset + " header size = " + trackItem.mPreloadHeaderSize + " preload size = " + trackItem.mPreSize);
                    if (z12) {
                        z11 = this.mDataLoaderHelperAdapter.preloadHLSSource(trackItem.mProxyUrl, (int) trackItem.mPreSize);
                    }
                    if (!z11) {
                        if (trackItem.mPreloadOffset > 0) {
                            long j14 = trackItem.mPreloadHeaderSize;
                            if (j14 > 0) {
                                this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) j14);
                            }
                            this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) trackItem.mPreloadOffset, (int) trackItem.mPreSize);
                        } else {
                            this.mInnerDataLoader.preloadResource(trackItem.mProxyUrl, (int) trackItem.mPreSize);
                        }
                    }
                    TTVideoEngineLog.i(TAG, String.format("[preload] exect preload task ,key is %s; videoId = %s", trackItem.mTaskKey, dataLoaderTaskItem.mVideoId));
                    return;
                }
                dataLoaderTaskItem._notifyError(Error.PreloadInvalidParameter);
                return;
            }
            dataLoaderTaskItem._notifyError(Error.PreloadInvalidParameter);
            return;
        }
        TTVideoEngineLog.e(TAG, "[preload] start mdl preload task fail. track is null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
        if (r0.startsWith("http://localhost") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean _supportProxy(java.lang.String r6) {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.lang.String r0 = r6.toLowerCase()
            java.lang.String r2 = "mdl://"
            boolean r2 = r0.startsWith(r2)
            if (r2 == 0) goto L15
            return r1
        L15:
            com.ss.mediakit.medialoader.AVMDLDataLoader r2 = r5.mInnerDataLoader
            if (r2 == 0) goto L1e
            java.lang.String r2 = r2.getLocalAddr()
            goto L1f
        L1e:
            r2 = 0
        L1f:
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L3d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "http://"
            r3.append(r4)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            boolean r2 = r0.startsWith(r2)
            if (r2 == 0) goto L4e
            return r1
        L3d:
            java.lang.String r2 = "http://127.0.0.1"
            boolean r2 = r0.startsWith(r2)
            if (r2 != 0) goto L80
            java.lang.String r2 = "http://localhost"
            boolean r2 = r0.startsWith(r2)
            if (r2 == 0) goto L4e
            goto L80
        L4e:
            java.lang.String r2 = "file://"
            boolean r2 = r0.startsWith(r2)
            if (r2 != 0) goto L80
            java.lang.String r2 = "/"
            boolean r0 = r0.startsWith(r2)
            if (r0 == 0) goto L5f
            goto L80
        L5f:
            boolean r0 = com.ss.ttvideoengine.utils.FormatProvider.FormatProviderHolder.isMpd(r6)
            if (r0 == 0) goto L66
            return r1
        L66:
            int r0 = r5.mEnableHls
            r2 = 1
            if (r0 != r2) goto L78
            boolean r0 = r5.mSupportHls
            if (r0 != 0) goto L7f
            int r0 = r5.mEnableHLSProxy
            if (r0 != r2) goto L78
            boolean r0 = r5.mHLSProxyValid
            if (r0 == 0) goto L78
            goto L7f
        L78:
            boolean r6 = com.ss.ttvideoengine.utils.FormatProvider.FormatProviderHolder.isM3u8(r6)
            if (r6 == 0) goto L7f
            return r1
        L7f:
            return r2
        L80:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._supportProxy(java.lang.String):boolean");
    }

    private void _tryToSetDefaultCacheDir() {
        if (this.mContext == null || !TextUtils.isEmpty(this.mConfigure.mCacheDir)) {
            return;
        }
        String str = TTHelper.getAppFilesPath(this.mContext) + File.separator + "mdlcache";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        this.mConfigure.mCacheDir = str;
    }

    private void asyncCopyOperation(AVMDLCopyOperation aVMDLCopyOperation) {
        AVMDLDataLoader aVMDLDataLoader;
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            aVMDLDataLoader = this.mInnerDataLoader;
        } finally {
            try {
            } finally {
            }
        }
        if (aVMDLDataLoader == null) {
            return;
        }
        aVMDLDataLoader.asyncCopyOperation(aVMDLCopyOperation);
    }

    private void changeConfigWithPermission(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        if (!FeatureManager.hasPermission(FeatureManager.HTTP_DNS)) {
            aVMDLDataLoaderConfigure.mEnableExternDNS = 0;
        }
        if (FeatureManager.hasPermission(FeatureManager.NATIVE_MDL) && InfoWrapper.getNativeMdlEnable() == 1) {
            this.mEnableMdlProtocol = true;
        }
        StrategyManager.instance().mdlStart(aVMDLDataLoaderConfigure);
    }

    private void dumpLibMd5() {
        String str;
        if (this.mEnableDumpLibMd5 != 1 || this.mContext == null) {
            return;
        }
        try {
            str = this.mContext.getApplicationInfo().dataDir + "/lib";
        } catch (Exception unused) {
            str = null;
        }
        if (str == null) {
            return;
        }
        String fileMd5 = TTHelper.getFileMd5(new File(str + File.separatorChar + "libavmdl.so"));
        if (fileMd5 != null) {
            TTVideoEngineLog.e(TAG, "libavmdl md5: " + fileMd5);
        }
    }

    public static final String encodeUrlByQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        TTVideoEngineLog.d("TTHelperEncode", "before encode:" + str);
        try {
            String queryComponentEncode = AVMDLDataLoader.queryComponentEncode(str);
            if (TextUtils.isEmpty(queryComponentEncode)) {
                TTVideoEngineLog.d("TTHelperEncode", "call native encode fail,try java");
                queryComponentEncode = URLEncoder.encode(str, "UTF-8");
            }
            TTVideoEngineLog.d("TTHelperEncode", "after encode:" + queryComponentEncode);
            return queryComponentEncode;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static DataLoaderHelper getDataLoader() {
        return Holder.instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01ce A[Catch: Exception -> 0x0176, TRY_LEAVE, TryCatch #0 {Exception -> 0x0176, blocks: (B:78:0x0150, B:80:0x0167, B:82:0x016b, B:85:0x0178, B:87:0x017c, B:89:0x0182, B:91:0x0187, B:93:0x018b, B:95:0x01a6, B:96:0x01ac, B:98:0x01b0, B:99:0x01b6, B:100:0x01c0, B:102:0x01ce, B:90:0x0185), top: B:106:0x0150 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0167 A[Catch: Exception -> 0x0176, TryCatch #0 {Exception -> 0x0176, blocks: (B:78:0x0150, B:80:0x0167, B:82:0x016b, B:85:0x0178, B:87:0x017c, B:89:0x0182, B:91:0x0187, B:93:0x018b, B:95:0x01a6, B:96:0x01ac, B:98:0x01b0, B:99:0x01b6, B:100:0x01c0, B:102:0x01ce, B:90:0x0185), top: B:106:0x0150 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x017c A[Catch: Exception -> 0x0176, TryCatch #0 {Exception -> 0x0176, blocks: (B:78:0x0150, B:80:0x0167, B:82:0x016b, B:85:0x0178, B:87:0x017c, B:89:0x0182, B:91:0x0187, B:93:0x018b, B:95:0x01a6, B:96:0x01ac, B:98:0x01b0, B:99:0x01b6, B:100:0x01c0, B:102:0x01ce, B:90:0x0185), top: B:106:0x0150 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018b A[Catch: Exception -> 0x0176, TryCatch #0 {Exception -> 0x0176, blocks: (B:78:0x0150, B:80:0x0167, B:82:0x016b, B:85:0x0178, B:87:0x017c, B:89:0x0182, B:91:0x0187, B:93:0x018b, B:95:0x01a6, B:96:0x01ac, B:98:0x01b0, B:99:0x01b6, B:100:0x01c0, B:102:0x01ce, B:90:0x0185), top: B:106:0x0150 }] */
    @android.annotation.SuppressLint({"CI_DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean initInternal() {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper.initInternal():boolean");
    }

    private boolean isMDLPrecisePreloadEnable() {
        AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure = this.mConfigure;
        if (aVMDLDataLoaderConfigure == null || TextUtils.isEmpty(aVMDLDataLoaderConfigure.mPrecisePreloadConfigStr)) {
            return false;
        }
        try {
            if (new JSONObject(this.mConfigure.mPrecisePreloadConfigStr).getInt("enable") <= 0) {
                return false;
            }
            return true;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean loadLibrary() {
        if (this.mProxy == null) {
            return true;
        }
        dumpLibMd5();
        if (this.mProxy != null && !this.isProxyLibraryLoaded) {
            if (this.mEnableMdlV2 == 1) {
                try {
                    this.mProxy.loadLibrary("avmdlbase");
                    this.isProxyLibraryLoaded = this.mProxy.loadLibrary("avmdlv2");
                } catch (Exception unused) {
                    this.isProxyLibraryLoaded = false;
                }
            }
            TTVideoEngineLog.d(TAG, "try to load avmdl: " + this.isProxyLibraryLoaded);
            if (!this.isProxyLibraryLoaded) {
                this.isProxyLibraryLoaded = this.mProxy.loadLibrary("avmdl");
            }
        }
        return this.isProxyLibraryLoaded;
    }

    private String preloadProxyQuery(String str, String str2, long j10, long j11, String[] strArr, String str3, String str4, int i10, String str5, boolean z10, String str6, String str7, int i11) {
        return preloadProxyQuery(str, str2, j10, j11, strArr, str3, str4, i10, str5, z10, str6, 0, 0L, str7, i11, -1);
    }

    private String proxyQuery(String str, String str2, long j10, long j11, String[] strArr, String str3, String str4, boolean z10, String str5, int i10) {
        return preloadProxyQuery(str, str2, j10, j11, strArr, str3, str4, 0, null, z10, str5, 0, 0L, "", -1, i10);
    }

    private String proxyQueryProvideMode(String str, String str2, int i10, int i11, String str3) {
        if (TextUtils.isEmpty(str) || i11 == 0) {
            return null;
        }
        String encodeUrl = TTHelper.encodeUrl(str);
        if (TextUtils.isEmpty(encodeUrl)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = str;
        }
        String encodeUrl2 = TTHelper.encodeUrl(str2);
        if (!TextUtils.isEmpty(encodeUrl2)) {
            str = encodeUrl2;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?rk=");
        stringBuffer.append(str);
        stringBuffer.append("&k=");
        stringBuffer.append(encodeUrl);
        stringBuffer.append("&pv=");
        stringBuffer.append(1);
        if (!TextUtils.isEmpty(str3)) {
            stringBuffer.append("&gid=");
            stringBuffer.append(str3);
        }
        if (i10 > 0) {
            stringBuffer.append("&l=");
            stringBuffer.append(i10);
        }
        return stringBuffer.toString();
    }

    private void reportSpeed(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        if (this.mEnableReportSpeed == 0) {
            return;
        }
        long j10 = aVMDLDataLoaderNotifyInfo.code;
    }

    public void _addEngine(TTVideoEngine tTVideoEngine, String str) {
        if (!TextUtils.isEmpty(str) && tTVideoEngine != null) {
            try {
                this.mEngineLock.lock();
                ArrayList<WeakReference<TTVideoEngine>> arrayList = this.mAllUsingEngies.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.mAllUsingEngies.put(str, arrayList);
                }
                ValueWeakReference valueWeakReference = new ValueWeakReference(tTVideoEngine);
                if (!arrayList.contains(valueWeakReference)) {
                    arrayList.add(valueWeakReference);
                    TTVideoEngineLog.i(TAG, "add engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
                }
                this.mEngineLock.unlock();
            } catch (Throwable th2) {
                this.mEngineLock.unlock();
                throw th2;
            }
        }
    }

    public String _getProxyUrl(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith(MDL_PREFIX)) {
                return str;
            }
            int indexOf = str.indexOf("?");
            if (indexOf == -1) {
                return null;
            }
            String localAddr = this.mInnerDataLoader.getLocalAddr();
            if (TextUtils.isEmpty(localAddr)) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("http://");
            stringBuffer.append(localAddr);
            stringBuffer.append(str.substring(indexOf));
            String stringBuffer2 = stringBuffer.toString();
            TTVideoEngineLog.e(TAG, "_proxyUrl: " + stringBuffer2);
            return stringBuffer2;
        } catch (Exception unused) {
            TTVideoEngineLog.e(TAG, "get proxy url failed: " + str);
            return str;
        }
    }

    @Nullable
    String _headerString(HashMap<String, String> hashMap) {
        if (hashMap != null && hashMap.size() >= 1) {
            StringBuilder sb2 = new StringBuilder();
            for (String str : hashMap.keySet()) {
                sb2.append(str);
                sb2.append(":");
                sb2.append(" ");
                sb2.append(hashMap.get(str));
                sb2.append("\r\n");
            }
            return sb2.toString();
        }
        return null;
    }

    public String _proxyUrl(String str, String str2, long j10, String[] strArr, Resolution resolution, String str3, VideoInfo videoInfo, String str4, String str5, boolean z10, boolean z11, String str6, long j11, String[] strArr2, int i10, String str7, boolean z12) {
        return _proxyUrl(str, str2, j10, strArr, resolution, str3, videoInfo, str4, str5, z10, z11, str6, j11, strArr2, i10, str7, z12, null, null);
    }

    public void _removeEngine(TTVideoEngine tTVideoEngine, String str) {
        if (!TextUtils.isEmpty(str) && tTVideoEngine != null) {
            try {
                this.mEngineLock.lock();
                ArrayList<WeakReference<TTVideoEngine>> arrayList = this.mAllUsingEngies.get(str);
                if (arrayList != null) {
                    arrayList.remove(new ValueWeakReference(tTVideoEngine));
                    TTVideoEngineLog.i(TAG, "remove engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
                    if (arrayList.size() == 0) {
                        this.mAllUsingEngies.remove(str);
                        PreloadUtil preloadUtil = this.mPreloadUtil;
                        if (preloadUtil.mPlayBufferLowerBound > 0 && preloadUtil.mPlayBufferUpperBound > 0) {
                            preloadUtil.removePlayInfo(str);
                        }
                    }
                }
            } finally {
                this.mEngineLock.unlock();
            }
        }
    }

    public void _removePlayTask(String str) {
        this.mAllPlayTasks.popItem(str);
    }

    public void addListener(DataLoaderListener2 dataLoaderListener2) {
        this.mListener.addListener(dataLoaderListener2);
    }

    public void addPreloadMedias(List<PreloadMedia> list, String str) {
        if (!FeatureManager.hasPermission("preload") || list == null) {
            return;
        }
        if (str == null) {
            str = PreloadConfig.share().getCurrentSceneId();
        }
        TTVideoEngineLog.i(TAG, "[preload] add preload  mediaList ,size = " + list.size() + "sceneId = " + str);
        for (int i10 = 0; i10 < list.size(); i10++) {
            PreloadMedia preloadMedia = list.get(i10);
            preloadMedia.mSceneId = str;
            if (preloadMedia instanceof PreloadURLMedia) {
                addPreloadUrlMedia((PreloadURLMedia) preloadMedia);
            } else if (preloadMedia instanceof PreloadModelMedia) {
                if (i10 == list.size() - 1) {
                    ((PreloadModelMedia) preloadMedia).isLast = true;
                }
                addPreloadModelMedia((PreloadModelMedia) preloadMedia);
            }
        }
    }

    public void addPreloadModelMedia(PreloadModelMedia preloadModelMedia) {
        IVideoModel iVideoModel;
        if (!FeatureManager.hasPermission("preload")) {
            return;
        }
        if (preloadModelMedia != null && (iVideoModel = preloadModelMedia.mVideoModel) != null && preloadModelMedia.mResolution != null) {
            if (TextUtils.isEmpty(iVideoModel.getVideoRefStr(2))) {
                TTVideoEngineLog.e(TAG, "[preload] videoId invalid.");
                if (preloadModelMedia.getCallBackListener() != null) {
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                    preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, Error.PreloadInvalidParameter);
                    preloadModelMedia.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
                    return;
                }
                return;
            }
            _ml_addMedia(preloadModelMedia, preloadModelMedia.mSceneId);
            return;
        }
        TTVideoEngineLog.e(TAG, "[preload] addTask videoModel input invalid");
        if (preloadModelMedia != null && preloadModelMedia.getCallBackListener() != null) {
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo2 = new PreLoaderItemCallBackInfo(3);
            preLoaderItemCallBackInfo2.preloadError = new Error(Error.DataLoaderPreload, Error.PreloadInvalidParameter);
            preloadModelMedia.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo2);
        }
    }

    public void addPriorityPreloadTask(PreloadModelMedia preloadModelMedia) {
        if (preloadModelMedia != null) {
            if (this.mediaOperateThread != null) {
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(this);
                arrayList.add(preloadModelMedia);
                this.mediaOperateThread.postMessage(arrayList, 115);
                return;
            }
            _doMl_addPriorityTask(preloadModelMedia);
        }
    }

    public void addTask(String str, PreloaderVidItem preloaderVidItem) {
        if (this.mState != 0) {
            return;
        }
        if (preloaderVidItem == null || TextUtils.isEmpty(preloaderVidItem.mVideoId)) {
            TTVideoEngineLog.e(TAG, "videoId invalid.");
            return;
        }
        TTVideoEngineLog.i(TAG, String.format("addTask key is %s; videoId = %s", str, preloaderVidItem.mVideoId));
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            _addTask(str, preloaderVidItem.mVideoId, preloaderVidItem.mPreloadSize, preloaderVidItem, null, null);
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public DataLoaderCacheFileInfo cacheFileInfo(String str) {
        DataLoaderCacheInfo cacheInfo = getCacheInfo(str);
        if (cacheInfo != null) {
            DataLoaderCacheFileInfo dataLoaderCacheFileInfo = new DataLoaderCacheFileInfo();
            dataLoaderCacheFileInfo.mMediaSize = cacheInfo.mMediaSize;
            dataLoaderCacheFileInfo.mCacheSizeFromZero = cacheInfo.mCacheSizeFromZero;
            dataLoaderCacheFileInfo.mLocalFilePath = cacheInfo.mLocalFilePath;
            return dataLoaderCacheFileInfo;
        }
        return null;
    }

    public DataLoaderCacheFileInfo cacheFileInfoByTimeOut(String str, long j10, TimeUnit timeUnit) {
        DataLoaderCacheInfo cacheInfoByTimeOut = getCacheInfoByTimeOut(str, j10, timeUnit);
        if (cacheInfoByTimeOut != null) {
            DataLoaderCacheFileInfo dataLoaderCacheFileInfo = new DataLoaderCacheFileInfo();
            dataLoaderCacheFileInfo.mMediaSize = cacheInfoByTimeOut.mMediaSize;
            dataLoaderCacheFileInfo.mCacheSizeFromZero = cacheInfoByTimeOut.mCacheSizeFromZero;
            dataLoaderCacheFileInfo.mLocalFilePath = cacheInfoByTimeOut.mLocalFilePath;
            return dataLoaderCacheFileInfo;
        }
        return null;
    }

    public void cancelAllTasks() {
        if (this.mInnerDataLoader != null && this.mState == 0) {
            if (this.mEnableStrategyCenterCancelAll == 1 && StrategyHelper.helper().isRunning()) {
                StrategyHelper.helper().getCenter().businessEvent(StrategyCenter.APP_PRELOAD_CANCEL_ALL_EVENT, 1);
            }
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                cancelAllTasksInternal();
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        TTVideoEngineLog.e(TAG, "need start mdl first");
    }

    public void cancelAllTasksInternal() {
        ArrayList arrayList = new ArrayList();
        if (this.mExecuteTasks.count() > 0) {
            while (true) {
                DataLoaderTaskItem popBackItem = this.mExecuteTasks.popBackItem();
                if (popBackItem == null) {
                    break;
                } else if (popBackItem.mPriorityLevel >= 10000) {
                    arrayList.add(popBackItem);
                } else {
                    VideoInfoFetcher videoInfoFetcher = popBackItem.mFetcher;
                    if (videoInfoFetcher != null) {
                        videoInfoFetcher.cancel();
                    }
                    _notifyPreloadCancel(popBackItem);
                }
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                this.mExecuteTasks.enqueueItem((DataLoaderTaskItem) arrayList.get(i10));
            }
            arrayList.clear();
        }
        if (this.mPreloadTasks.count() > 0) {
            while (true) {
                DataLoaderTaskItem popBackItem2 = this.mPreloadTasks.popBackItem();
                if (popBackItem2 == null) {
                    break;
                } else if (popBackItem2.mPriorityLevel >= 10000) {
                    arrayList.add(popBackItem2);
                } else {
                    VideoInfoFetcher videoInfoFetcher2 = popBackItem2.mFetcher;
                    if (videoInfoFetcher2 != null) {
                        videoInfoFetcher2.cancel();
                    }
                    _notifyPreloadCancel(popBackItem2);
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                this.mPreloadTasks.enqueueItem((DataLoaderTaskItem) arrayList.get(i11));
            }
            arrayList.clear();
        }
        if (this.mAllPreloadTasks.count() > 0) {
            boolean z10 = false;
            while (true) {
                DataLoaderTaskItem popBackItem3 = this.mAllPreloadTasks.popBackItem();
                if (popBackItem3 == null) {
                    break;
                } else if (popBackItem3.mPriorityLevel >= 10000) {
                    arrayList.add(popBackItem3);
                } else {
                    _notifyPreloadCancel(popBackItem3);
                    z10 = true;
                }
            }
            if (z10) {
                this.mDataLoaderHelperAdapter.cancelAll();
                this.mInnerDataLoader.cancelAll();
            }
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                this.mAllPreloadTasks.enqueueItem((DataLoaderTaskItem) arrayList.get(i12));
            }
            arrayList.clear();
        }
    }

    public void cancelAllWaitReqs() {
        TTVideoEngineLog.d(TAG, "start do cancel all wait reqs");
        if (this.mInnerDataLoader != null && this.mState == 0) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                this.mInnerDataLoader.cancelAllPreloadWaitReqs();
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        TTVideoEngineLog.e(TAG, "need start mdl first");
    }

    public void cancelTask(String str) {
        CodecStrategyAdapter codecStrategyAdapter;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.mInnerDataLoader != null && this.mState == 0) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                DataLoaderTaskItem popItem = this.mPreloadTasks.popItem(str);
                if (popItem != null) {
                    _notifyPreloadCancel(popItem);
                } else {
                    DataLoaderTaskItem popItem2 = this.mExecuteTasks.popItem(str);
                    if (popItem2 != null) {
                        VideoInfoFetcher videoInfoFetcher = popItem2.mFetcher;
                        if (videoInfoFetcher != null) {
                            videoInfoFetcher.cancel();
                        }
                        PreloaderURLItem preloaderURLItem = popItem2.mURLItem;
                        if (preloaderURLItem != null && (codecStrategyAdapter = preloaderURLItem.mAdapter) != null && codecStrategyAdapter.isFetchSmartUrl()) {
                            popItem2.mURLItem.mAdapter.cancelFetchSmartUrlInfo();
                        }
                        _notifyPreloadCancel(popItem2);
                    } else {
                        DataLoaderTaskItem popItem3 = this.mAllPreloadTasks.popItem(str);
                        if (popItem3 != null) {
                            if (!this.mDataLoaderHelperAdapter.cancelPreload(str)) {
                                this.mInnerDataLoader.cancel(str);
                            }
                            _notifyPreloadCancel(popItem3);
                        }
                    }
                }
                TTVideoEngineLog.i(TAG, "[preload] cancel preload task. key = " + str);
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        TTVideoEngineLog.e(TAG, "need start mdl first");
    }

    public void cancelTaskByFilePath(String str) {
        cancelTask(TTHelper.keyFromFilePath(this.mContext, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0125 A[LOOP:6: B:67:0x0125->B:69:0x012b, LOOP_START, PHI: r1 
      PHI: (r1v3 int) = (r1v1 int), (r1v4 int) binds: [B:66:0x0123, B:69:0x012b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0137 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void cancelTaskByVideoId(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper.cancelTaskByVideoId(java.lang.String):void");
    }

    public void checkLoaderType(int i10) {
        int i11;
        this.mLock.lock(ABLock.TYPE_READ);
        if (this.mConfigure.mLoaderType != i10 && (i11 = this.mBackupLoaderType) != i10) {
            if (i11 > 0) {
                return;
            }
            try {
                try {
                    this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsSetBackupLoaderType, i10);
                } catch (Exception unused) {
                    TTVideoEngineLog.d(TAG, "set backup loader type failed");
                }
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    public void cleanCacheDir(long j10) {
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader != null) {
                aVMDLDataLoader.cleanCacheDir(j10);
            }
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    public void cleanSpecifiedCacheDir(String str, int i10) {
        AVMDLDataLoader aVMDLDataLoader;
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            aVMDLDataLoader = this.mInnerDataLoader;
        } finally {
            try {
            } finally {
            }
        }
        if (aVMDLDataLoader == null) {
            TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
        } else {
            aVMDLDataLoader.cleanSpecifiedCacheDir(str, i10);
        }
    }

    public void clearAllCaches() {
        clearAllCaches(false);
    }

    public void clearNetinfoCache() {
        AVMDLDataLoader aVMDLDataLoader;
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            aVMDLDataLoader = this.mInnerDataLoader;
        } finally {
            try {
            } finally {
            }
        }
        if (aVMDLDataLoader == null) {
            return;
        }
        aVMDLDataLoader.clearNetinfoCache();
    }

    public void close() {
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            if (this.mState == 1) {
                TTVideoEngineLog.e(TAG, "DataLoader not started, not need close");
                return;
            }
            this.mListener.clearListeners();
            this.mInnerDataLoader.close();
            cancelAllTasksInternal();
            removeAllPreloadMedia(null, 1);
            this.mState = 1;
            TTNetWorkListener.getInstance().stopListen(this.mNetWorkChangeCbr);
            TTNetWorkListener.getInstance().unregisterListener(this.mContext);
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void copyCache(final CopyCacheItem copyCacheItem) {
        if (copyCacheItem == null) {
            return;
        }
        AVMDLCopyOperation aVMDLCopyOperation = new AVMDLCopyOperation(copyCacheItem.mFileKey, copyCacheItem.mDestPath, copyCacheItem.mForceCopyUnfinished, copyCacheItem.mWaitIfCaching, new AVMDLCopyOperationListener() { // from class: com.ss.ttvideoengine.DataLoaderHelper.4
            @Override // com.ss.mediakit.medialoader.AVMDLCopyOperationListener
            public void onCopyComplete(boolean z10, int i10, String str) {
                CopyCacheListener copyCacheListener = copyCacheItem.mListener;
                if (copyCacheListener != null) {
                    copyCacheListener.onCopyComplete(z10, i10, str);
                }
            }

            @Override // com.ss.mediakit.medialoader.AVMDLCopyOperationListener
            public void onFileInfo(AVMDLFileInfo aVMDLFileInfo) {
                if (copyCacheItem.mListener != null) {
                    DataLoaderCacheInfo dataLoaderCacheInfo = new DataLoaderCacheInfo();
                    dataLoaderCacheInfo.mMediaSize = aVMDLFileInfo.mContentLenght;
                    dataLoaderCacheInfo.mCacheSizeFromZero = aVMDLFileInfo.mCacheSize;
                    copyCacheItem.mListener.onFileInfo(dataLoaderCacheInfo);
                }
            }
        });
        aVMDLCopyOperation.mCustomDir = copyCacheItem.mCustomDir;
        asyncCopyOperation(aVMDLCopyOperation);
    }

    public void createScene(PreloadScene preloadScene) {
        StrategyHelper.helper().getCenter().createScene(preloadScene.toJsonString());
    }

    public void destroyScene(String str) {
        StrategyHelper.helper().getCenter().destroyScene(str);
    }

    public void disableAutoTrim(String str) {
        if (!TextUtils.isEmpty(str) && this.mInnerDataLoader != null) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                this.mInnerDataLoader.makeFileAutoDeleteFlag(str, 1);
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    public void doParseHosts(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            this.mEnablePreParseHost = 1;
            this.mInnerDataLoader.doParseHosts(strArr);
        }
    }

    public String downloadUrl(String str, @Nullable String str2, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length < 1) {
            return null;
        }
        return proxyQuery(str, str2, 0L, 0L, strArr, null, null, false, null, -1);
    }

    public void enableAutoTrim(String str) {
        if (!TextUtils.isEmpty(str) && this.mInnerDataLoader != null) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                this.mInnerDataLoader.makeFileAutoDeleteFlag(str, 0);
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    public void focusMedia(String str, int i10) {
        if (this.mediaOperateThread != null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(this);
            arrayList.add(str);
            arrayList.add(Integer.valueOf(i10));
            this.mediaOperateThread.postMessage(arrayList, 114);
            return;
        }
        StrategyHelper.helper().getCenter().focusMedia(str, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceRemoveCacheFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!this.mDataLoaderHelperAdapter.removeCacheFile(str)) {
            if (this.mInnerDataLoader == null) {
                TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
            } else {
                TTVideoEngineLog.i(TAG, " force remove mdl file. key " + str);
                this.mInnerDataLoader.forceRemoveFileCache(str);
            }
        }
    }

    public String generateSubUrlKey(String str, String str2) {
        return AVMDLDataLoader.makeTsFileKey(str, str2);
    }

    public long getAllCacheSize() {
        long j10 = 0;
        if (this.mState != 0) {
            return 0L;
        }
        if (this.mLock.tryLock(ABLock.TYPE_READ)) {
            try {
                long allCacheSize = this.mDataLoaderHelperAdapter.getAllCacheSize();
                if (allCacheSize > 0) {
                    j10 = allCacheSize;
                }
                if (this.mInnerDataLoader == null) {
                    TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
                }
                j10 += this.mInnerDataLoader.getAllCacheSize();
            } finally {
                try {
                } finally {
                }
            }
        }
        return j10;
    }

    public JSONObject getCDNLog(String str) {
        String cDNLog;
        if (this.mState != 0 || TextUtils.isEmpty(str)) {
            return null;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null && (cDNLog = aVMDLDataLoader.getCDNLog(str)) != null) {
                    JSONObject jSONObject = new JSONObject(cDNLog);
                    TTVideoEngineLog.d(TAG, "get cdn log suc" + jSONObject.toString());
                    return jSONObject;
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(TAG, "get log exception" + e10.toString());
            }
            return null;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public long getCacheFileSize(String str) {
        return getCacheSize(str);
    }

    public DataLoaderCacheInfo getCacheInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            if (this.mInnerDataLoader != null && this.mState == 0) {
                return _processCacheInfo(this.mInnerDataLoader.getStringCacheInfo(str));
            }
        } catch (Throwable th2) {
            try {
                TTVideoEngineLog.d(th2);
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
        return null;
    }

    public DataLoaderCacheInfo getCacheInfoByFilePath(String str) {
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            if (this.mInnerDataLoader != null) {
                return _processCacheInfo(this.mInnerDataLoader.getStringCacheInfo(TTHelper.keyFromFilePath(this.mContext, str), str));
            }
        } finally {
            try {
                return null;
            } finally {
            }
        }
        return null;
    }

    public DataLoaderCacheInfo getCacheInfoByTimeOut(String str, long j10, TimeUnit timeUnit) {
        DataLoaderCacheInfo dataLoaderCacheInfo = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            TTVideoEngineLog.d(TAG, "****try get cacheinfo lock timeout" + j10);
            if (this.mLock.tryLock(ABLock.TYPE_READ, j10, timeUnit)) {
                TTVideoEngineLog.d(TAG, "####get cacheinfo lock suc");
                if (this.mInnerDataLoader != null && this.mState == 0) {
                    dataLoaderCacheInfo = _processCacheInfo(this.mInnerDataLoader.getStringCacheInfo(str));
                    TTVideoEngineLog.d(TAG, "get cacheinfo native end");
                    this.mLock.unlock(ABLock.TYPE_READ);
                }
                TTVideoEngineLog.d(TAG, "get cacheinfo fail mdl not start");
                this.mLock.unlock(ABLock.TYPE_READ);
                return null;
            }
            TTVideoEngineLog.d(TAG, "####not get cacheinfo lock timeout" + j10);
        } catch (InterruptedException e10) {
            TTVideoEngineLog.d(TAG, "get cacheinfo interrupt exception:" + e10.getLocalizedMessage());
        }
        TTVideoEngineLog.d(TAG, "get cacheinfo all end");
        return dataLoaderCacheInfo;
    }

    public long getCacheSize(String str) {
        long cacheSize;
        AVMDLDataLoader aVMDLDataLoader;
        long j10 = 0;
        if (this.mState != 0) {
            return 0L;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            cacheSize = this.mDataLoaderHelperAdapter.getCacheSize(str);
        } finally {
            try {
                return j10;
            } finally {
            }
        }
        if (cacheSize <= 0 && (aVMDLDataLoader = this.mInnerDataLoader) != null) {
            long cacheSize2 = aVMDLDataLoader.getCacheSize(str);
            if (cacheSize2 > 0) {
                j10 = cacheSize2;
            }
            return j10;
        }
        return cacheSize;
    }

    public long getCacheSizeByFilePath(String str) {
        this.mLock.lock(ABLock.TYPE_READ);
        long j10 = 0;
        try {
            if (this.mInnerDataLoader != null) {
                long cacheSize = this.mInnerDataLoader.getCacheSize(TTHelper.keyFromFilePath(this.mContext, str), str);
                if (cacheSize > 0) {
                    j10 = cacheSize;
                }
            }
        } finally {
            try {
                return j10;
            } finally {
            }
        }
        return j10;
    }

    @Override // com.ss.mediakit.medialoader.AVMDLDataLoaderListener
    public String getCheckSumInfo(String str) {
        try {
            if (this.mListener == null || TextUtils.isEmpty(str)) {
                return null;
            }
            return this.mListener.getCheckSumInfo(str);
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
            return null;
        }
    }

    public long getContinueCacheSize(String str, int i10, long j10) {
        if (this.mState != 0) {
            return 0L;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        this.mLock.unlock(ABLock.TYPE_READ);
        return 0L;
    }

    public String getDataLoaderUrl(String str, String str2, String[] strArr, Resolution resolution, String str3) {
        return _proxyUrl(str, str2, 0L, strArr, resolution, str3, null, null, null, false, false, null, 0L, null, -1, null, false);
    }

    public long getDownloadCountByVid(String str) {
        long j10 = -1;
        if (this.mState != 0 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null) {
                    j10 = aVMDLDataLoader.getDownloadCount(str);
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(TAG, "get download count failed:" + e10.toString());
            }
            return j10;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    @Override // com.ss.mediakit.medialoader.AVMDLDataLoaderListener
    public long getInt64Value(int i10, long j10) {
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getIntValue(int i10) {
        int i11;
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            switch (i10) {
                case 1:
                    i11 = this.mConfigure.mMaxCacheSize;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 7:
                    i11 = this.mConfigure.mEnableExternDNS;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 8:
                    i11 = this.mConfigure.mEnableSocketReuse;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 12:
                    i11 = this.mMdlPreloadStrategy;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 90:
                    i11 = this.mConfigure.mDNSMainType;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 100:
                    i11 = this.mConfigure.mMaxTlsVersion;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 101:
                    i11 = this.mConfigure.mEnableSessionReuse;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 103:
                    i11 = AVMDLDNSParser.getIntValue(4);
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 105:
                    i11 = AVMDLDNSParser.getIntValue(6);
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 114:
                    i11 = this.mEnablePreParseHost;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 115:
                    i11 = this.mEnableBackupIP;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 1001:
                    i11 = this.mConfigure.mEnablePreconnect;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 1008:
                    i11 = this.mCurrentAccessType;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case 1150:
                    i11 = this.mConfigure.mEnableIOManager;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_IS_SUPPORT_HLS /* 9009 */:
                    i11 = this.mSupportHls;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_ENABLE_HLS_PROXY /* 9016 */:
                    i11 = this.mEnableHLSProxy;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_ENABLE_NOTIFY_ERROR /* 9018 */:
                    i11 = this.mEnableNotifyError;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_ENABLE_NOTIFY_NOT_ONLY_NETWORK_ERROR /* 9019 */:
                    i11 = this.mEnableNotOnlyNotifyNetError;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_ENABLE_PRELOAD_FIRST_TS /* 9021 */:
                    i11 = this.mEnablePreloadFirstTs;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                case DATALOADER_KEY_ENABLE_PRELOAD_ALL_TS /* 9023 */:
                    i11 = this.mEnablePreloadAllTs;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
                default:
                    i11 = -1;
                    this.mLock.unlock(ABLock.TYPE_READ);
                    return i11;
            }
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    public long getIoWriteError(String str) {
        if (TextUtils.isEmpty(str) || this.mState != 0) {
            return -1L;
        }
        this.mLock.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader != null) {
                long longValueByStr = aVMDLDataLoader.getLongValueByStr(str, 1013);
                TTVideoEngineLog.d(TAG, "get io write error code = " + longValueByStr);
                return longValueByStr;
            }
        } finally {
            try {
                return -1L;
            } finally {
            }
        }
        return -1L;
    }

    public long getLongValue(int i10) {
        long j10;
        this.mLock.lock(ABLock.TYPE_READ);
        long j11 = -1;
        try {
            if (i10 != 1003) {
                if (i10 != 1152) {
                    if (i10 != 1153) {
                        return -1L;
                    }
                    j10 = this.mConfigure.mMonitorMinAllowLoadSize;
                } else {
                    j10 = this.mConfigure.mMonitorTimeInternal;
                }
                return j10;
            }
            if (this.mEnableMdlProtocol) {
                j11 = this.mMdlProtocolHandle;
            }
            return j11;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    @Nullable
    public String getMdlInitializeErrorString() {
        String str = this.mInitializeErrorString;
        if (str == null) {
            return null;
        }
        this.mInitializeErrorString = null;
        return str;
    }

    public int getMdlInitializeState() {
        return this.mInitializeState;
    }

    public int getMdlInvalidCode() {
        int i10 = this.mInvalidCode;
        this.mInvalidCode = IVideoEventLogger.MdlInvalidCode.None.ordinal();
        return i10;
    }

    public long getMissReason(int i10, String str, String str2, String str3) {
        AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure;
        this.mLock.lock(ABLock.TYPE_READ);
        long j10 = 0;
        try {
            if (this.mInnerDataLoader != null && ((aVMDLDataLoaderConfigure = this.mConfigure) == null || aVMDLDataLoaderConfigure.mEnableMissReason != 0)) {
                if (i10 == 0) {
                    str = TTHelper.keyFromFilePath(this.mContext, str);
                } else if (i10 != 1) {
                    str = null;
                }
                if (str != null) {
                    if (this.mConfigure.mEnableUseGroupId > 0 && !TextUtils.isEmpty(str3)) {
                        str2 = str3;
                    }
                    long missReason = this.mInnerDataLoader.getMissReason(str, str2);
                    if (missReason > 0) {
                        j10 = missReason;
                    }
                }
            }
        } finally {
            try {
                return j10;
            } finally {
            }
        }
        return j10;
    }

    String getNetworkName(long j10) {
        int i10 = (int) j10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return null;
                }
                return "wifi";
            }
            return "cellular";
        }
        return PRELOAD_DEFAULT_SCENE;
    }

    public String getPlayLog(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null) {
                    str2 = aVMDLDataLoader.getStringValueByStr(str, 1010);
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
            }
            return str2;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public long getPreloadTaskCount() {
        return this.mExecuteTasks.count() + this.mAllPreloadTasks.count() + this.mPreloadTasks.count();
    }

    @Nullable
    public String getPreloadTraceId(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null) {
                    str2 = aVMDLDataLoader.getStringValueByStr(str, 1012);
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
            }
            return str2;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public int getProbeIntervalMS() {
        return -1;
    }

    public int getProbeType() {
        return 0;
    }

    public String getStringValue(int i10) {
        String str;
        AVMDLDataLoader aVMDLDataLoader;
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
            }
            if (i10 == 0) {
                str = this.mConfigure.mCacheDir;
            } else if (i10 == 6) {
                if (this.mVersionInfo == null && (aVMDLDataLoader = this.mInnerDataLoader) != null) {
                    this.mVersionInfo = aVMDLDataLoader.getStringValue(11);
                }
                str = this.mVersionInfo;
            } else if (i10 != 1509) {
                if (i10 == 9010) {
                    str = this.mConfigure.mSocketTraingCenterConfigStr;
                }
                return null;
            } else {
                str = this.mConfigure.mCustomUA;
            }
            return str;
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public boolean isNeedPlayInfo() {
        if (this.mEnableBufferPreload <= 0) {
            return false;
        }
        PreloadUtil preloadUtil = this.mPreloadUtil;
        if (preloadUtil.mPlayBufferLowerBound <= 0 || preloadUtil.mPlayBufferUpperBound <= 0) {
            return false;
        }
        return true;
    }

    public boolean isNotifyNetworkErrorCodes(int i10) {
        if (this.mNotifyNetErrors.contains(Integer.valueOf(i10))) {
            return true;
        }
        return false;
    }

    public boolean isReportLogEnable() {
        this.mLock.lock(ABLock.TYPE_VOID);
        try {
            return this.mReportLogEnable;
        } finally {
            this.mLock.unlock(ABLock.TYPE_VOID);
        }
    }

    public boolean isRunning() {
        boolean z10;
        this.mLock.lock(ABLock.TYPE_VOID);
        try {
            if (this.mState == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            return z10;
        } finally {
            this.mLock.unlock(ABLock.TYPE_VOID);
        }
    }

    public void moveToScene(String str) {
        StrategyHelper.helper().getCenter().switchToScene(str);
    }

    public void notifyPreloadCancelled(String str, String str2) {
        DataLoaderListenerWrapper dataLoaderListenerWrapper = this.mListener;
        if (dataLoaderListenerWrapper == null) {
            return;
        }
        dataLoaderListenerWrapper.onNotify(8, 0L, 0L, str);
    }

    public void notifyTriggerPreload(long j10) {
        DataLoaderListenerWrapper dataLoaderListenerWrapper = this.mListener;
        if (dataLoaderListenerWrapper == null) {
            return;
        }
        dataLoaderListenerWrapper.onNotify(9, 0L, j10, "");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.ss.mediakit.medialoader.AVMDLDataLoaderListener
    @SuppressLint({"CI_DefaultLocale"})
    public void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        DataLoaderListenerWrapper dataLoaderListenerWrapper;
        TestSpeedListener testSpeedListener;
        boolean onDownloadProgress;
        DataLoaderTaskItem itemForKey;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (aVMDLDataLoaderNotifyInfo == null) {
            return;
        }
        JSONObject jSONObject3 = aVMDLDataLoaderNotifyInfo.jsonLog;
        if (jSONObject3 != null) {
            try {
                if (!jSONObject3.has("app_session_id")) {
                    aVMDLDataLoaderNotifyInfo.jsonLog.put("app_session_id", VideoEventBase.appSessionId);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        int i10 = aVMDLDataLoaderNotifyInfo.what;
        if (i10 == 10) {
            VideoEventEngineUploader videoEventEngineUploader = this.mEngineUploader;
            if (videoEventEngineUploader != null) {
                videoEventEngineUploader.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                return;
            }
            DataLoaderListenerWrapper dataLoaderListenerWrapper2 = this.mListener;
            if (dataLoaderListenerWrapper2 != null) {
                dataLoaderListenerWrapper2.onLogInfo(4, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                TTVideoEngineLog.d(TAG, "live loader log msg: " + aVMDLDataLoaderNotifyInfo.logInfo);
            }
        } else if (i10 == 11) {
            VideoEventEngineUploader videoEventEngineUploader2 = this.mEngineUploader;
            if (videoEventEngineUploader2 != null) {
                videoEventEngineUploader2.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                return;
            }
            DataLoaderListenerWrapper dataLoaderListenerWrapper3 = this.mListener;
            if (dataLoaderListenerWrapper3 != null) {
                dataLoaderListenerWrapper3.onLogInfo(5, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                TTVideoEngineLog.d(TAG, "live loader log sample msg: " + aVMDLDataLoaderNotifyInfo.logInfo);
            }
        } else if (i10 == 24) {
            if (this.mDataLoaderHelperAdapter.onLoaderOpen(aVMDLDataLoaderNotifyInfo) || (dataLoaderListenerWrapper = this.mListener) == null) {
                return;
            }
            dataLoaderListenerWrapper.onNotify(30, 0L, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo);
        } else if (i10 != 50) {
            if (i10 == 70) {
                JSONObject _onHeartBeatFire = _onHeartBeatFire(aVMDLDataLoaderNotifyInfo.jsonLog);
                aVMDLDataLoaderNotifyInfo.jsonLog = _onHeartBeatFire;
                VideoEventEngineUploader videoEventEngineUploader3 = this.mEngineUploader;
                if (videoEventEngineUploader3 != null) {
                    videoEventEngineUploader3.onEvent(aVMDLDataLoaderNotifyInfo.logType, _onHeartBeatFire);
                    return;
                }
                DataLoaderListenerWrapper dataLoaderListenerWrapper4 = this.mListener;
                if (dataLoaderListenerWrapper4 != null) {
                    dataLoaderListenerWrapper4.onLogInfo(3, aVMDLDataLoaderNotifyInfo.logType, _onHeartBeatFire);
                }
                if (this.mUploader != null && this.mReportLogEnable) {
                    this.mUploader.onUplaod(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                }
                TTVideoEngineLog.d(TAG, "heart beat msg: " + aVMDLDataLoaderNotifyInfo.logInfo);
                return;
            }
            if (i10 == 700) {
                TTVideoEngineLog.d(TAG, "KeyIsSpeedTestSampledByTime  mNeedSpeedTestByTimeInternal:" + this.mNeedSpeedTestByTimeInternal + " code:" + aVMDLDataLoaderNotifyInfo.code);
                if (FeatureManager.hasPermission(FeatureManager.NET_SPEED)) {
                    TestSpeedListener testSpeedListener2 = this.mTestSpeedListener;
                    if (testSpeedListener2 != null) {
                        testSpeedListener2.onNotify(2, aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.logExtraJsonStr);
                    }
                    int i11 = this.mNeedSpeedTestByTimeInternal;
                    int i12 = i11 != 1 ? i11 != 2 ? -1 : 32 : 2;
                    if (this.mListener == null || i12 == -1) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("KeyIsSpeedTestSampledByTimenotify by");
                    sb2.append(i12 == 2 ? "general" : "timeinternal");
                    sb2.append("speed info code:");
                    sb2.append(aVMDLDataLoaderNotifyInfo.code);
                    sb2.append(" parameter:");
                    sb2.append(aVMDLDataLoaderNotifyInfo.parameter);
                    TTVideoEngineLog.d(TAG, sb2.toString());
                    this.mListener.onNotify(i12, aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo);
                }
            } else if (i10 == 2000) {
                DataLoaderListenerWrapper dataLoaderListenerWrapper5 = this.mListener;
                if (dataLoaderListenerWrapper5 != null) {
                    dataLoaderListenerWrapper5.onNotify(33, aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo);
                }
            } else if (i10 == 702) {
                if (!FeatureManager.hasPermission(FeatureManager.NET_SPEED) || (testSpeedListener = this.mTestSpeedListener) == null || testSpeedListener == null) {
                    return;
                }
                testSpeedListener.onNotify(2, aVMDLDataLoaderNotifyInfo.logInfo);
            } else if (i10 != 703) {
                if (i10 == 901) {
                    TTVideoEngineLog.d("multinetwork", String.format("target network:%d current network:%d", Long.valueOf(aVMDLDataLoaderNotifyInfo.parameter), Long.valueOf(aVMDLDataLoaderNotifyInfo.code)));
                    String networkName = getNetworkName(aVMDLDataLoaderNotifyInfo.parameter);
                    String networkName2 = getNetworkName(aVMDLDataLoaderNotifyInfo.code);
                    if (TextUtils.isEmpty(networkName) || TextUtils.isEmpty(networkName2) || this.mListener == null) {
                        return;
                    }
                    TTVideoEngineLog.d("multinetwork", "do callback target: " + networkName + " current: " + networkName2);
                    this.mListener.onMultiNetworkSwitch(networkName, networkName2);
                    TTVideoEngineLog.d("multinetwork", "end do callback target: " + networkName + " current: " + networkName2);
                } else if (i10 != 902) {
                    switch (i10) {
                        case 0:
                            VideoEventEngineUploader videoEventEngineUploader4 = this.mEngineUploader;
                            if (videoEventEngineUploader4 != null) {
                                videoEventEngineUploader4.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                return;
                            }
                            DataLoaderListenerWrapper dataLoaderListenerWrapper6 = this.mListener;
                            if (dataLoaderListenerWrapper6 != null) {
                                dataLoaderListenerWrapper6.onLogInfo(0, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                            }
                            if (this.mUploader == null || !this.mReportLogEnable) {
                                return;
                            }
                            this.mUploader.onUplaod(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                            return;
                        case 1:
                            VideoEventEngineUploader videoEventEngineUploader5 = this.mEngineUploader;
                            if (videoEventEngineUploader5 != null) {
                                videoEventEngineUploader5.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                return;
                            }
                            DataLoaderListenerWrapper dataLoaderListenerWrapper7 = this.mListener;
                            if (dataLoaderListenerWrapper7 != null) {
                                dataLoaderListenerWrapper7.onLogInfo(1, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                            }
                            if (this.mUploader == null || !this.mReportLogEnable) {
                                return;
                            }
                            this.mUploader.onUplaod(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                            return;
                        case 2:
                            StrategyHelper.helper().speedInfoUpdate();
                            if (FeatureManager.hasPermission(FeatureManager.NET_SPEED)) {
                                DataLoaderListenerWrapper dataLoaderListenerWrapper8 = this.mListener;
                                if (dataLoaderListenerWrapper8 != null) {
                                    dataLoaderListenerWrapper8.onNotify(2, aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo);
                                }
                                reportSpeed(aVMDLDataLoaderNotifyInfo);
                                return;
                            }
                            return;
                        case 3:
                        case 4:
                            TTVideoEngineLog.d(TAG, "KeyIsFileCacheProgress log = " + aVMDLDataLoaderNotifyInfo.logInfo + ", task type = " + aVMDLDataLoaderNotifyInfo.parameter + " code = " + ((int) aVMDLDataLoaderNotifyInfo.code));
                            if (aVMDLDataLoaderNotifyInfo.logInfo != null) {
                                long j10 = aVMDLDataLoaderNotifyInfo.parameter;
                                if (j10 == 3) {
                                    int i13 = aVMDLDataLoaderNotifyInfo.what;
                                    if (i13 == 4) {
                                        onDownloadProgress = this.mDataLoaderHelperAdapter.onDownloadCompleted(aVMDLDataLoaderNotifyInfo);
                                    } else {
                                        onDownloadProgress = i13 == 3 ? this.mDataLoaderHelperAdapter.onDownloadProgress(aVMDLDataLoaderNotifyInfo) : false;
                                    }
                                    if (onDownloadProgress) {
                                        return;
                                    }
                                    Downloader.getInstance().progress(aVMDLDataLoaderNotifyInfo.logInfo);
                                    return;
                                }
                                _progressInfoString(aVMDLDataLoaderNotifyInfo, j10 == 2);
                                return;
                            }
                            return;
                        case 5:
                            DataLoaderListenerWrapper dataLoaderListenerWrapper9 = this.mListener;
                            if (dataLoaderListenerWrapper9 != null) {
                                dataLoaderListenerWrapper9.onNotify(20, aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, aVMDLDataLoaderNotifyInfo.logInfo);
                                return;
                            }
                            return;
                        case 6:
                            try {
                                JSONObject process = DataLoaderCDNLog.process(aVMDLDataLoaderNotifyInfo.jsonLog);
                                if (process != null) {
                                    DataLoaderListenerWrapper dataLoaderListenerWrapper10 = this.mListener;
                                    if (dataLoaderListenerWrapper10 != null) {
                                        dataLoaderListenerWrapper10.onNotifyCDNLog(process);
                                    }
                                    TTVideoEngineLog.d("avmdlcdnlog", "receive log:" + process);
                                    return;
                                }
                                return;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                return;
                            }
                        case 7:
                            this.mDataLoaderHelperAdapter.onLoaderCancel(aVMDLDataLoaderNotifyInfo);
                            return;
                        case 8:
                            break;
                        default:
                            switch (i10) {
                                case 13:
                                    DataLoaderListenerWrapper dataLoaderListenerWrapper11 = this.mListener;
                                    if (dataLoaderListenerWrapper11 == null || (jSONObject = aVMDLDataLoaderNotifyInfo.jsonLog) == null) {
                                        return;
                                    }
                                    dataLoaderListenerWrapper11.onLogInfo(0, aVMDLDataLoaderNotifyInfo.logType, jSONObject);
                                    return;
                                case 14:
                                    TTVideoEngineLog.i(TAG, "MDL Alog: " + aVMDLDataLoaderNotifyInfo.logInfo);
                                    return;
                                case 15:
                                    VideoEventEngineUploader videoEventEngineUploader6 = this.mEngineUploader;
                                    if (videoEventEngineUploader6 != null) {
                                        videoEventEngineUploader6.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                        return;
                                    }
                                    DataLoaderListenerWrapper dataLoaderListenerWrapper12 = this.mListener;
                                    if (dataLoaderListenerWrapper12 == null || (jSONObject2 = aVMDLDataLoaderNotifyInfo.jsonLog) == null) {
                                        return;
                                    }
                                    dataLoaderListenerWrapper12.onLogInfoToMonitor(6, aVMDLDataLoaderNotifyInfo.logType, jSONObject2);
                                    return;
                                case 16:
                                    DataLoaderListenerWrapper dataLoaderListenerWrapper13 = this.mListener;
                                    if (dataLoaderListenerWrapper13 != null) {
                                        dataLoaderListenerWrapper13.onLogInfo(0, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (i10) {
                                        case 19:
                                            VideoEventEngineUploader videoEventEngineUploader7 = this.mEngineUploader;
                                            if (videoEventEngineUploader7 != null) {
                                                videoEventEngineUploader7.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                return;
                                            }
                                            DataLoaderListenerWrapper dataLoaderListenerWrapper14 = this.mListener;
                                            if (dataLoaderListenerWrapper14 != null) {
                                                dataLoaderListenerWrapper14.onLogInfo(7, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                return;
                                            }
                                            return;
                                        case 20:
                                            break;
                                        case 21:
                                            if (aVMDLDataLoaderNotifyInfo.logInfo == null || this.mDataLoaderHelperAdapter.onDownloadCompleted(aVMDLDataLoaderNotifyInfo)) {
                                                return;
                                            }
                                            Downloader.getInstance().progress(aVMDLDataLoaderNotifyInfo.logInfo);
                                            return;
                                        case 22:
                                            String str = aVMDLDataLoaderNotifyInfo.logInfo;
                                            if (str != null) {
                                                Downloader.getInstance().downloadDidSuspened(str);
                                                return;
                                            }
                                            return;
                                        default:
                                            switch (i10) {
                                                case 1000:
                                                case 1001:
                                                case 1002:
                                                case 1003:
                                                case 1005:
                                                    VideoEventEngineUploader videoEventEngineUploader8 = this.mEngineUploader;
                                                    if (videoEventEngineUploader8 != null) {
                                                        videoEventEngineUploader8.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                        return;
                                                    }
                                                    DataLoaderListenerWrapper dataLoaderListenerWrapper15 = this.mListener;
                                                    if (dataLoaderListenerWrapper15 != null) {
                                                        dataLoaderListenerWrapper15.onLogInfo(10, aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                    }
                                                    if (this.mUploader == null || !this.mReportLogEnable) {
                                                        return;
                                                    }
                                                    this.mUploader.onUplaod(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                    return;
                                                case 1004:
                                                    VideoEventEngineUploader videoEventEngineUploader9 = this.mEngineUploader;
                                                    if (videoEventEngineUploader9 != null) {
                                                        videoEventEngineUploader9.onEventV2(monitorName, aVMDLDataLoaderNotifyInfo.jsonLog);
                                                        return;
                                                    }
                                                    return;
                                                default:
                                                    TTVideoEngineLog.d(TAG, "NOT DEAL notify info what =  " + aVMDLDataLoaderNotifyInfo.what);
                                                    return;
                                            }
                                    }
                            }
                    }
                    String str2 = aVMDLDataLoaderNotifyInfo.logInfo;
                    if (str2 != null && aVMDLDataLoaderNotifyInfo.parameter == 3) {
                        if (this.mDataLoaderHelperAdapter.onDownloadFail(aVMDLDataLoaderNotifyInfo)) {
                            return;
                        }
                        String str3 = aVMDLDataLoaderNotifyInfo.logInfo;
                        Downloader.getInstance().downloadFail(str3, _errorWithCode((int) aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.parameter, str3));
                    } else if (str2 != null) {
                        TTVideoEngineLog.i(TAG, " task fail log = " + aVMDLDataLoaderNotifyInfo.logInfo + ", code = " + aVMDLDataLoaderNotifyInfo.code + ", task type = " + aVMDLDataLoaderNotifyInfo.parameter);
                        String[] split = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                        if (split.length < 1) {
                            return;
                        }
                        String str4 = split[0];
                        if (this.mDataLoaderHelperAdapter.onLoaderFail(aVMDLDataLoaderNotifyInfo) || (itemForKey = this.mAllPreloadTasks.itemForKey(str4)) == null) {
                            return;
                        }
                        DataLoaderTaskQueue dataLoaderTaskQueue = this.mAllPreloadTasks;
                        Error error = new Error(Error.DataLoaderPreload, (int) aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.logInfo);
                        String str5 = TextUtils.isEmpty(itemForKey.mVideoId) ? str4 : itemForKey.mVideoId;
                        DataLoaderTaskLoadProgress loadProgressByRawKey = PreloadLoadProgressCenter.center().getLoadProgressByRawKey(str5);
                        if (loadProgressByRawKey == null) {
                            loadProgressByRawKey = new DataLoaderTaskLoadProgress();
                        }
                        loadProgressByRawKey.mVideoId = itemForKey.mVideoId;
                        loadProgressByRawKey.mTaskType = (int) aVMDLDataLoaderNotifyInfo.parameter;
                        loadProgressByRawKey.setUp(itemForKey);
                        loadProgressByRawKey.onError(str4, error);
                        DataLoaderListenerWrapper dataLoaderListenerWrapper16 = this.mListener;
                        if (dataLoaderListenerWrapper16 != null) {
                            dataLoaderListenerWrapper16.onLoadProgress(loadProgressByRawKey);
                        }
                        PreloadLoadProgressCenter.center().putByRawKey(str5, loadProgressByRawKey);
                        if (loadProgressByRawKey.isCacheEnd() || loadProgressByRawKey.isPreloadComplete()) {
                            dataLoaderTaskQueue.popItem(str4);
                            TTVideoEngineLog.i(TAG, "pop all task item. videoId = " + itemForKey.mVideoId + " key = " + str4);
                            PreloadLoadProgressCenter.center().removeLoadProgressByRawKey(str5);
                            if (this.mListener != null) {
                                DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = new DataLoaderTaskProgressInfo();
                                dataLoaderTaskProgressInfo.mTaskType = (int) aVMDLDataLoaderNotifyInfo.parameter;
                                dataLoaderTaskProgressInfo.mVideoId = itemForKey.mVideoId;
                                dataLoaderTaskProgressInfo.mKey = str4;
                                PreloaderURLItem preloaderURLItem = itemForKey.mURLItem;
                                if (preloaderURLItem != null && preloaderURLItem.getFilePath() != null) {
                                    dataLoaderTaskProgressInfo.mLocalFilePath = itemForKey.mURLItem.getFilePath();
                                    dataLoaderTaskProgressInfo.mKey = null;
                                }
                                this.mListener.onTaskProgress(dataLoaderTaskProgressInfo);
                            }
                            if (itemForKey.getCallBackListener() == null || aVMDLDataLoaderNotifyInfo.parameter != 2) {
                                return;
                            }
                            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                            preLoaderItemCallBackInfo.preloadError = error;
                            preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                            preLoaderItemCallBackInfo.preloadDataInfo = null;
                            itemForKey.getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
                        }
                    }
                } else {
                    TTVideoEngineLog.d(TAG, "KeyIsFileDeleteSizeByUsedTime size: " + aVMDLDataLoaderNotifyInfo.code);
                    DataLoaderListenerWrapper dataLoaderListenerWrapper17 = this.mListener;
                    if (dataLoaderListenerWrapper17 != null) {
                        dataLoaderListenerWrapper17.onNotify(31, 0L, aVMDLDataLoaderNotifyInfo.code, null);
                    }
                }
            }
        }
    }

    @Override // com.ss.ttvideoengine.portrait.PortraitChangeListener
    public void onPortraitChange(String str, Object obj) {
        String str2;
        if (this.mInnerDataLoader == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, obj);
            str2 = jSONObject.toString();
        } catch (JSONException e10) {
            TTVideoEngineLog.d(e10);
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            TTVideoEngineLog.d(TAG, "onPortraitChange enginePortait: " + str2);
            this.mInnerDataLoader.setStringValue(AVMDLDataLoader.KeyIsEnginePortraitUpdateStr, str2);
        }
    }

    @Override // com.ss.mediakit.medialoader.AVMDLStartCompleteListener
    public void onStartComplete() {
        this.mInnerDataloaderStartComplete = true;
        if (this.mInitializeState == IVideoEventLogger.MdlInitializeState.Initializing.ordinal()) {
            this.mInitializeState = IVideoEventLogger.MdlInitializeState.InitializeComplete.ordinal();
        }
        TTVideoEngineLog.d(TAG, "MediaDataLoader start complete");
        int currentAccessType = TTNetWorkListener.getInstance().getCurrentAccessType();
        this.mCurrentAccessType = currentAccessType;
        AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
        if (aVMDLDataLoader != null) {
            aVMDLDataLoader.setIntValue(AVMDLDataLoader.KeyIsNetworkAccessType, currentAccessType);
            if (!StrategyHelper.helper().isRunning()) {
                TTVideoEngineLog.d(TAG, "strategy center running failed, set mdl preload strategy back " + this.mMdlOldPreloadStrategy);
                this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, this.mMdlOldPreloadStrategy);
            }
        }
        this.mDataLoaderHelperAdapter.onMDLStartComplete();
        this.mHLSProxyValid = this.mDataLoaderHelperAdapter.isHlsProxyValid();
        DataLoaderListenerWrapper dataLoaderListenerWrapper = this.mListener;
        if (dataLoaderListenerWrapper != null) {
            dataLoaderListenerWrapper.onNotify(11, 0L, 0L, "mdl start complete");
        }
        this.mListener.onStartComplete();
    }

    public float playTaskProgress() {
        return -1.0f;
    }

    public void preConnect(String str) {
        if (this.mState == 0 && !TextUtils.isEmpty(str)) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                Uri parse = Uri.parse(str);
                int port = parse.getPort();
                if (port == -1) {
                    if (str.startsWith("https")) {
                        port = 443;
                    } else {
                        port = 80;
                    }
                }
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null) {
                    aVMDLDataLoader.preConnectByHost(parse.getHost(), port);
                }
                this.mLock.unlock(ABLock.TYPE_READ);
            } catch (Throwable th2) {
                this.mLock.unlock(ABLock.TYPE_READ);
                throw th2;
            }
        }
    }

    public String proxyUrl(String str, String str2) {
        return proxyUrl(str, str, new String[]{str2}, null, null);
    }

    public long quickQueryCacheFileSize(String str) {
        long j10 = 0;
        if (this.mState != 0) {
            return 0L;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader != null) {
                long quickQueryCacheSize = aVMDLDataLoader.quickQueryCacheSize(str);
                if (quickQueryCacheSize > 0) {
                    j10 = quickQueryCacheSize;
                }
            }
        } finally {
            try {
                return j10;
            } finally {
            }
        }
        return j10;
    }

    public void removeAllPreloadMedia(String str, int i10) {
        _ml_removeAllMedias(str, i10);
    }

    public void removeCacheFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!this.mDataLoaderHelperAdapter.removeCacheFile(str)) {
            if (this.mInnerDataLoader == null) {
                TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
            } else {
                TTVideoEngineLog.i(TAG, "remove mdl file. key " + str);
                this.mInnerDataLoader.removeFileCache(str);
            }
        }
    }

    public void removeDownloadFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!this.mDataLoaderHelperAdapter.removeDownloadFile(str)) {
            if (this.mInnerDataLoader == null) {
                TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
            } else {
                TTVideoEngineLog.i(TAG, "remove mdl file, download key " + str);
                this.mInnerDataLoader.removeFileCache(str);
            }
        }
    }

    public void removeListener(DataLoaderListener2 dataLoaderListener2) {
        this.mListener.removeListener(dataLoaderListener2);
    }

    public void removeMedia(String str, String str2) {
        _ml_removeMedia(str, str2);
    }

    public void removePriorityPreloadTask(String str) {
        if (str != null) {
            if (this.mediaOperateThread != null) {
                ArrayList<Object> arrayList = new ArrayList<>();
                arrayList.add(this);
                arrayList.add(str);
                this.mediaOperateThread.postMessage(arrayList, 116);
                return;
            }
            _doMl_removePriorityTask(str);
        }
    }

    @Nullable
    public void resetPreloadTraceId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
            }
            if (this.mInnerDataLoader != null && this.mState == 0) {
                this.mInnerDataLoader.resetPreloadTraceId(str);
            }
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void resumeFileWriteIO() {
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader != null) {
                aVMDLDataLoader.resumeFileWriteIO();
            }
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void resumePreconnect() {
        if (this.mInnerDataLoader == null) {
            TTVideoEngineLog.e(TAG, "need start mdl first");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        this.mInnerDataLoader.resumePreConnect();
        this.mLock.unlock(ABLock.TYPE_READ);
    }

    public void setBackUpIP(String str, String str2) {
        AVMDLDNSParser.getInstance().setBackUpIP(str, str2);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.mEnableBackupIP = 1;
        }
    }

    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        TTVideoEngineLog.d(TAG, "setcustom paths and maxcaches ");
        this.mLock.lock(ABLock.TYPE_WRITE);
        try {
            this.mConfigure.setCacheInfoList(strArr, jArr);
        } finally {
            this.mLock.unlock(ABLock.TYPE_WRITE);
        }
    }

    public void setClassLoader(ClassLoader classLoader) {
        if (classLoader == null) {
            TTVideoEngineLog.d(TAG, "class loader null");
            return;
        }
        this.mLock.lock(ABLock.TYPE_WRITE);
        try {
            if (this.mClasssLoader == null) {
                this.mClasssLoader = classLoader;
            }
            this.mLock.unlock(ABLock.TYPE_WRITE);
            TTVideoEngineLog.d(TAG, "set class loader end" + classLoader);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_WRITE);
            throw th2;
        }
    }

    public void setContext(Context context) {
        if (context == null) {
            TTVideoEngineLog.d(TAG, "set context null");
            return;
        }
        this.mLock.lock(ABLock.TYPE_WRITE);
        try {
            if (this.mContext == null) {
                SettingsHelper.helper().setContext(context);
                SettingsHelper.helper().loadMDLCache();
            }
            this.mContext = context;
            this.mLock.unlock(ABLock.TYPE_WRITE);
            TTVideoEngineLog.d(TAG, "set context end" + context);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_WRITE);
            throw th2;
        }
    }

    public synchronized void setEngineUploader(VideoEventEngineUploader videoEventEngineUploader) {
        this.mEngineUploader = videoEventEngineUploader;
    }

    public void setIntValue(int i10, int i11) {
        this.mLock.lock(ABLock.TYPE_READ);
        TTVideoEngineLog.d(TAG, "setIntValue key = " + i10 + ", value = " + i11);
        boolean z10 = true;
        try {
            try {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    if (i10 != 7) {
                                        if (i10 != 8) {
                                            if (i10 != 9) {
                                                if (i10 != 55) {
                                                    if (i10 != 56) {
                                                        if (i10 != 60) {
                                                            if (i10 != 61) {
                                                                if (i10 != 100) {
                                                                    if (i10 != 101) {
                                                                        switch (i10) {
                                                                            case 11:
                                                                                this.mConfigure.mPreloadParallelNum = i11;
                                                                                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                                                                                if (aVMDLDataLoader != null) {
                                                                                    aVMDLDataLoader.setIntValue(102, i11);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 12:
                                                                                if (i11 >= 100) {
                                                                                    AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure = this.mConfigure;
                                                                                    this.mMdlOldPreloadStrategy = aVMDLDataLoaderConfigure.mPreloadStrategy;
                                                                                    aVMDLDataLoaderConfigure.mPreloadStrategy = 100;
                                                                                } else {
                                                                                    AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure2 = this.mConfigure;
                                                                                    this.mMdlOldPreloadStrategy = aVMDLDataLoaderConfigure2.mPreloadStrategy;
                                                                                    aVMDLDataLoaderConfigure2.mPreloadStrategy = i11;
                                                                                }
                                                                                this.mMdlPreloadStrategy = i11;
                                                                                if (i11 == 200) {
                                                                                    this.mConfigure.mEnableIOManager = 1;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 13:
                                                                                this.mConfigure.mCheckSumLevel = i11;
                                                                                break;
                                                                            case 14:
                                                                                this.mConfigure.mTestSpeedTypeVersion = i11;
                                                                                break;
                                                                            case 15:
                                                                                this.mNeedDLLoadP2PLib = i11;
                                                                                break;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 17:
                                                                                        TTVideoEngineLog.i(TAG, "set write file notify intervalMS " + i11);
                                                                                        this.mConfigure.mWriteFileNotifyIntervalMS = i11;
                                                                                        break;
                                                                                    case 18:
                                                                                        this.mPreloadTaskIgnorePlayerStall = i11;
                                                                                        break;
                                                                                    case 19:
                                                                                        this.mFloatSize = i11;
                                                                                        break;
                                                                                    case 20:
                                                                                        this.mPreloadPreConnect = i11;
                                                                                        break;
                                                                                    case 21:
                                                                                        this.mConfigure.mEnableDownloaderLog = i11;
                                                                                        break;
                                                                                    case 22:
                                                                                        this.mConfigure.mEnableTTNetLoader = i11;
                                                                                        break;
                                                                                    case 23:
                                                                                        this.mConfigure.mTTNetLoaderCronetBufSizeKB = i11;
                                                                                        break;
                                                                                    case 24:
                                                                                        this.mConfigure.mEnableTTQuicHeLoader = i11;
                                                                                        break;
                                                                                    case 25:
                                                                                        this.mConfigure.mEnableTTQuicHeLoaderCheckWithNetworkType = i11;
                                                                                        break;
                                                                                    case 50:
                                                                                        this.mConfigure.mIsCloseFileCache = i11;
                                                                                        break;
                                                                                    case 80:
                                                                                        this.mConfigure.mPreloadWaitListType = i11;
                                                                                        break;
                                                                                    case 103:
                                                                                        AVMDLDNSParser.setIntValue(4, i11);
                                                                                        break;
                                                                                    case 104:
                                                                                        AVMDLDNSParser.setIntValue(5, i11);
                                                                                        break;
                                                                                    case 105:
                                                                                        AVMDLDNSParser.setIntValue(6, i11);
                                                                                        break;
                                                                                    case 106:
                                                                                        AVMDLDNSParser.setIntValue(7, i11);
                                                                                        break;
                                                                                    case 112:
                                                                                        this.mConfigure.mSpeedSampleInterval = i11;
                                                                                        break;
                                                                                    case 113:
                                                                                        this.mConfigure.mGlobalSpeedSampleInterval = i11;
                                                                                        AVMDLDataLoader aVMDLDataLoader2 = this.mInnerDataLoader;
                                                                                        if (aVMDLDataLoader2 != null) {
                                                                                            aVMDLDataLoader2.setIntValue(AVMDLDataLoader.KeyIsSetGlobalSpeedSampleInterval, i11);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 119:
                                                                                        SettingsHelper.helper().setEnable(i11);
                                                                                        break;
                                                                                    case 121:
                                                                                        this.mConfigure.mUseNewSpeedTestForSingle = i11;
                                                                                        break;
                                                                                    case 123:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mDeviceScoreEx = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 200:
                                                                                        this.mConfigure.mEnableEventInfo = i11;
                                                                                        break;
                                                                                    case 500:
                                                                                        this.mConfigure.mLiveP2pAllow = i11;
                                                                                        break;
                                                                                    case 501:
                                                                                        this.mConfigure.mLiveLoaderType = i11;
                                                                                        break;
                                                                                    case 502:
                                                                                        this.mConfigure.mLiveLoaderEnable = i11;
                                                                                        break;
                                                                                    case 505:
                                                                                        this.mConfigure.mLiveWatchDurationThreshold = i11;
                                                                                        break;
                                                                                    case 506:
                                                                                        this.mConfigure.mLiveCacheThresholdHttpToP2p = i11;
                                                                                        break;
                                                                                    case 507:
                                                                                        this.mConfigure.mLiveCacheThresholdP2pToHttp = i11;
                                                                                        break;
                                                                                    case 508:
                                                                                        this.mConfigure.mLiveMaxTrySwitchP2pTimes = i11;
                                                                                        break;
                                                                                    case 509:
                                                                                        this.mConfigure.mLiveWaitP2pReadyThreshold = i11;
                                                                                        break;
                                                                                    case 510:
                                                                                        this.mConfigure.mLiveMobileUploadAllow = i11;
                                                                                        break;
                                                                                    case 511:
                                                                                        this.mConfigure.mLiveMobileDownloadAllow = i11;
                                                                                        break;
                                                                                    case 512:
                                                                                        this.mConfigure.mAlogEnable = i11;
                                                                                        AVMDLDataLoader aVMDLDataLoader3 = this.mInnerDataLoader;
                                                                                        if (aVMDLDataLoader3 != null) {
                                                                                            aVMDLDataLoader3.setIntValue(AVMDLDataLoader.KeyIsAlogEnable, i11);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 513:
                                                                                        this.mConfigure.mLiveRecvDataTimeout = i11;
                                                                                        break;
                                                                                    case 1000:
                                                                                        if (this.mEnableNetworkChangedListen == 1) {
                                                                                            clearNetinfoCache();
                                                                                            AVMDLDataLoader aVMDLDataLoader4 = this.mInnerDataLoader;
                                                                                            if (aVMDLDataLoader4 != null) {
                                                                                                aVMDLDataLoader4.setIntValue(AVMDLDataLoader.KeyIsNetworkChanged, 1);
                                                                                                break;
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 1001:
                                                                                        this.mConfigure.mEnablePreconnect = i11;
                                                                                        break;
                                                                                    case 1002:
                                                                                        this.mConfigure.mPreconnectNum = i11;
                                                                                        break;
                                                                                    case 1004:
                                                                                        if (i11 == 0) {
                                                                                            z10 = false;
                                                                                        }
                                                                                        this.mInvalidMdlProcotol = z10;
                                                                                        TTVideoEngineLog.i(TAG, "setIntValue: mInvalidMdlProcotol: " + this.mInvalidMdlProcotol);
                                                                                        break;
                                                                                    case 1005:
                                                                                        if (!FeatureManager.hasPermission(FeatureManager.NATIVE_MDL)) {
                                                                                            break;
                                                                                        } else {
                                                                                            if (i11 != 1) {
                                                                                                z10 = false;
                                                                                            }
                                                                                            this.mEnableMdlProtocol = z10;
                                                                                            TTVideoEngineLog.i(TAG, "config DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE: " + this.mEnableMdlProtocol);
                                                                                            break;
                                                                                        }
                                                                                    case 1006:
                                                                                        this.mConfigure.mRingBufferSizeKB = i11;
                                                                                        break;
                                                                                    case 1007:
                                                                                        this.mConfigure.mEnableFileCacheV2 = i11;
                                                                                        break;
                                                                                    case 1009:
                                                                                        this.mConfigure.mEnableFileRingBuffer = i11;
                                                                                        break;
                                                                                    case 1010:
                                                                                        this.mConfigure.mEnableUseFileExtendLoaderBuffer = i11;
                                                                                        break;
                                                                                    case 1011:
                                                                                        this.mEnableNetworkChangedListen = i11;
                                                                                        break;
                                                                                    case 1012:
                                                                                        this.mEnableFirstNativeMDL = i11;
                                                                                        break;
                                                                                    case 1013:
                                                                                        if (i11 != 1) {
                                                                                            z10 = false;
                                                                                        }
                                                                                        this.mCloseLocalServer = z10;
                                                                                        break;
                                                                                    case 1100:
                                                                                        this.mEnableReportSpeed = i11;
                                                                                        break;
                                                                                    case 1101:
                                                                                        this.mConfigure.mEnableLoaderPreempt = i11;
                                                                                        break;
                                                                                    case 1102:
                                                                                        this.mConfigure.mAccessCheckLevel = i11;
                                                                                        break;
                                                                                    case 1103:
                                                                                        this.mConfigure.mNextDownloadThreshold = i11;
                                                                                        break;
                                                                                    case 1104:
                                                                                        AVMDLDataLoader aVMDLDataLoader5 = this.mInnerDataLoader;
                                                                                        if (aVMDLDataLoader5 != null) {
                                                                                            aVMDLDataLoader5.setIntValue(AVMDLDataLoader.KeyIsNetworkAccessType, i11);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1105:
                                                                                        this.mConfigure.mSocketSendBufferKB = i11;
                                                                                        break;
                                                                                    case 1108:
                                                                                        this.mConfigure.mEnableSyncDnsForPcdn = i11;
                                                                                        break;
                                                                                    case 1109:
                                                                                        AVMDLDataLoader aVMDLDataLoader6 = this.mInnerDataLoader;
                                                                                        if (aVMDLDataLoader6 != null) {
                                                                                            aVMDLDataLoader6.setIntValue(AVMDLDataLoader.KeyIsSetBackupLoaderType, i11);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1110:
                                                                                        this.mConfigure.mXYLibValue = i11;
                                                                                        break;
                                                                                    case 1111:
                                                                                        this.mConfigure.mCheckPreloadLevel = i11;
                                                                                        break;
                                                                                    case 1112:
                                                                                        this.mNeedSpeedTestByTimeInternal = i11;
                                                                                        break;
                                                                                    case 1113:
                                                                                        if (i11 == 0) {
                                                                                            z10 = false;
                                                                                        }
                                                                                        this.mAudioPreloadFirst = z10;
                                                                                        break;
                                                                                    case 1115:
                                                                                        this.mConfigure.mMaxIPV6Num = i11;
                                                                                        break;
                                                                                    case 1116:
                                                                                        this.mConfigure.mMaxIPV4Num = i11;
                                                                                        break;
                                                                                    case 1117:
                                                                                        this.mConfigure.mForbidByPassCookie = i11;
                                                                                        break;
                                                                                    case 1118:
                                                                                        this.mConfigure.mEnableLazyBufferpool = i11;
                                                                                        break;
                                                                                    case 1119:
                                                                                        this.mConfigure.mSessionTimeout = i11;
                                                                                        break;
                                                                                    case 1120:
                                                                                        this.mConfigure.mEnableNewBufferpool = i11;
                                                                                        break;
                                                                                    case 1121:
                                                                                        this.mConfigure.mNewBufferPoolBlockSize = i11;
                                                                                        break;
                                                                                    case 1122:
                                                                                        this.mConfigure.mNewBufferPoolResidentSize = i11;
                                                                                        break;
                                                                                    case 1123:
                                                                                        this.mConfigure.mNewBufferPoolGrowBlockCount = i11;
                                                                                        break;
                                                                                    case 1124:
                                                                                        this.mConfigure.mEnablePlayInfoCache = i11;
                                                                                        break;
                                                                                    case 1125:
                                                                                        this.mConfigure.mControlCDNRangeType = i11;
                                                                                        break;
                                                                                    case 1126:
                                                                                        this.mConfigure.mEnableP2PPreDown = i11;
                                                                                        break;
                                                                                    case 1127:
                                                                                        this.mConfigure.mEnablePlayLog = i11;
                                                                                        break;
                                                                                    case 1128:
                                                                                        this.mConfigure.mEnableNetScheduler = i11;
                                                                                        break;
                                                                                    case 1129:
                                                                                        this.mConfigure.mNetSchedulerBlockAllNetErr = i11;
                                                                                        break;
                                                                                    case 1130:
                                                                                        this.mConfigure.mNetSchedulerBlockErrCount = i11;
                                                                                        break;
                                                                                    case 1131:
                                                                                        this.mConfigure.mNetSChedulerBlockDurationMs = i11;
                                                                                        break;
                                                                                    case 1132:
                                                                                        this.mConfigure.mFirstRangeLeftThreshold = i11;
                                                                                        break;
                                                                                    case 1133:
                                                                                        this.mConfigure.mIsAllowTryTheLastUrl = i11;
                                                                                        break;
                                                                                    case 1134:
                                                                                        this.mConfigure.mEnableCacheReqRange = i11;
                                                                                        break;
                                                                                    case 1135:
                                                                                        this.mConfigure.mEnableLoaderSeek = i11;
                                                                                        break;
                                                                                    case 1136:
                                                                                        this.mConfigure.mP2PPreDownPeerCount = i11;
                                                                                        break;
                                                                                    case 1137:
                                                                                        this.mConfigure.mEnableDynamicTimeout = i11;
                                                                                        break;
                                                                                    case 1138:
                                                                                        this.mConfigure.mSocketInitialTimeout = i11;
                                                                                        break;
                                                                                    case 1139:
                                                                                        this.mConfigure.mMaxSocketReuseCount = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_FORCE_DNS_EXPIRED_TIME /* 1140 */:
                                                                                        AVMDLDNSParser.setIntValue(10, i11);
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_DEFAULT_DNS_EXPIRED_TIME /* 1141 */:
                                                                                        AVMDLDNSParser.setIntValue(2, i11);
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_P2P_FIRSTRANGE_LOADER_TYPE /* 1143 */:
                                                                                        this.mConfigure.mP2PFirstRangeLoaderType = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_MAX_ALIVE_HOST_NUM /* 1145 */:
                                                                                        this.mConfigure.mMaxAliveHostNum = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_FILE_EXTEND_SIZE /* 1146 */:
                                                                                        this.mConfigure.mFileExtendSizeKB = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_MIN_ALLOW_SPEED /* 1147 */:
                                                                                        this.mConfigure.mMinAllowSpeed = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_BLOCK_HOST_ERR_IP_COUNT /* 1148 */:
                                                                                        this.mConfigure.mNetSchedulerBlockHostIpErrCount = i11;
                                                                                        break;
                                                                                    case 1150:
                                                                                        if (FeatureManager.hasPermission("strategy_center")) {
                                                                                            this.mConfigure.mEnableIOManager = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1151:
                                                                                        this.mConfigure.mEnableOwnVDPPreloadNotify = i11;
                                                                                        break;
                                                                                    case 1154:
                                                                                        this.mEnableMdlV2 = i11;
                                                                                        this.mDidConfigMdlV2 = true;
                                                                                        break;
                                                                                    case 1155:
                                                                                        this.mEnableSplitPreload = i11;
                                                                                        break;
                                                                                    case 1156:
                                                                                        if (i11 > 0) {
                                                                                            this.mPreloadUtil.mPlayBufferLowerBound = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1157:
                                                                                        if (i11 > 0) {
                                                                                            this.mPreloadUtil.mPlayBufferUpperBound = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1158:
                                                                                        this.mConfigure.mMaxFileMemCacheSize = i11;
                                                                                        break;
                                                                                    case 1159:
                                                                                        this.mConfigure.mMaxFileMemCacheNum = i11;
                                                                                        break;
                                                                                    case 1160:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mEnableEarlyData = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1161:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mSocketRecvBufferSize = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1162:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mEnableSpeedPredict = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1163:
                                                                                        this.mEnableBufferPreload = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_USE_ORIGINAL_URL /* 1164 */:
                                                                                        this.mConfigure.mEnableUseOriginalUrl = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS /* 1166 */:
                                                                                        this.mConfigure.mEnableLoaderLogExtractUrls = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_MAX_LOADER_LOG_NUM /* 1167 */:
                                                                                        this.mConfigure.mMaxLoaderLogNum = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_CHECK_CONTENT_TYPE_METHOD /* 1168 */:
                                                                                        this.mConfigure.mCheckContentTypeMethod = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_DISABLE_THREAD_POOL /* 1169 */:
                                                                                        this.mConfigure.mCloseThreadPool = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_UPDATE_NET_STATUS /* 1170 */:
                                                                                        this.mEnableSetMDLNetStatus = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE /* 1171 */:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mEnableSpeedEngine = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_SPEED_REPORT /* 1172 */:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mEnableSpeedReport = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 1501:
                                                                                        this.mConfigure.mEnableCellularUp = i11;
                                                                                        break;
                                                                                    case 1503:
                                                                                        this.mDashAudioPreloadMinSize = i11;
                                                                                        break;
                                                                                    case 1504:
                                                                                        this.mDashAudioPreloadRatio = i11;
                                                                                        break;
                                                                                    case 1505:
                                                                                        this.mEnableStrategyCenterCancelAll = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_PRELOAD_CHECK_URL /* 1513 */:
                                                                                        this.mEnableCheckPreloadUrls = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_COOKIE_TOKEN_CHECK_LEVEL /* 1514 */:
                                                                                        this.mConfigure.mGetCookieTokenLevel = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_BYTEMEDIANETLOADER /* 1701 */:
                                                                                        this.mConfigure.mEnableByteMediaNetLoader = i11;
                                                                                        break;
                                                                                    case 2000:
                                                                                        this.mConfigure.mEnableStorageModule = i11;
                                                                                        break;
                                                                                    case 2001:
                                                                                        this.mConfigure.mStoPlayDldWinSizeKBNM = i11;
                                                                                        break;
                                                                                    case 2002:
                                                                                        this.mConfigure.mStoPlayDldWinSizeKBLS = i11;
                                                                                        break;
                                                                                    case 2003:
                                                                                        this.mConfigure.mStoRingBufferSizeKB = i11;
                                                                                        break;
                                                                                    case 2004:
                                                                                        this.mConfigure.mStoIoWriteLimitKBTh1 = i11;
                                                                                        break;
                                                                                    case 2005:
                                                                                        this.mConfigure.mStoIoWriteLimitKBTh2 = i11;
                                                                                        break;
                                                                                    case 2006:
                                                                                        this.mConfigure.mStoMaxIdleTimeSec = i11;
                                                                                        break;
                                                                                    case 2008:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mThreadStackSizeLevel = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2009:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mThreadPoolMinCount = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2010:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mEnableThreadPoolCheckIdle = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2011:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mThreadPoolTTLSecond = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2012:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mMaxIpNum = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2013:
                                                                                        this.mConfigure.mNonBlockRangeMode = i11;
                                                                                        break;
                                                                                    case 2014:
                                                                                        this.mConfigure.mNonBlockRangeMaxSizeKB = i11;
                                                                                        break;
                                                                                    case 2015:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mNetUnreachableStopRetry = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2016:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mEnableWaitNetReachable = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2017:
                                                                                        this.mConfigure.mEnableFileMutexOptimize = i11;
                                                                                        break;
                                                                                    case 2018:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mSkipCDNBeforeExpiredSec = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2019:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mNetUnreachableTimeout = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2020:
                                                                                    case 2021:
                                                                                        if (i11 >= 1 && i11 <= 32) {
                                                                                            if (!TextUtils.isEmpty(this.mConfigure.mP2PCostTag)) {
                                                                                                StringBuilder sb2 = new StringBuilder();
                                                                                                AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure3 = this.mConfigure;
                                                                                                sb2.append(aVMDLDataLoaderConfigure3.mP2PCostTag);
                                                                                                sb2.append(',');
                                                                                                sb2.append(Integer.toString(i11));
                                                                                                aVMDLDataLoaderConfigure3.mP2PCostTag = sb2.toString();
                                                                                            } else {
                                                                                                this.mConfigure.mP2PCostTag = Integer.toString(i11);
                                                                                            }
                                                                                            TTVideoEngineLog.d(TAG, "cur p2p cost tag is: " + this.mConfigure.mP2PCostTag);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2022:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mIgnoreTextSpeedTest = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_OPTIMIZE_RANGE /* 2023 */:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mEnableOptimizeRange = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_NET_LOG_MAX_SIZE /* 2024 */:
                                                                                        if (i11 > 0) {
                                                                                            this.mConfigure.mDownLogMaxSize = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_CHECK_CACHE_DIR /* 2025 */:
                                                                                        this.mConfigure.mCheckCacheDir = i11;
                                                                                        break;
                                                                                    case 2026:
                                                                                        this.mConfigure.mEnableUseGroupId = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_DISABLE_RECENT_CACHE /* 2027 */:
                                                                                        this.mConfigure.mDisableRecentCache = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_UPDATE_FILE_INTERNAL /* 2028 */:
                                                                                        this.mConfigure.mUpdateCacheFileInternal = i11;
                                                                                        break;
                                                                                    case 2031:
                                                                                        this.mConfigure.mEnableMissReason = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_PRELOAD_INFO_RECORD_MAX_COUNT /* 2032 */:
                                                                                        this.mConfigure.mPreloadInfoRecordMaxCnt = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_TRACEID_PRELOAD_LOG /* 2033 */:
                                                                                        this.mConfigure.mEnableTraceIdPreloadLog = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_SESSION_CACHE_INTERVAL /* 2034 */:
                                                                                        this.mConfigure.mSessionCacheInterval = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_FILEMANAGER_INTERVAL /* 2035 */:
                                                                                        this.mConfigure.mFileManagerInterval = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_ENGINE_PORTRAIT /* 2036 */:
                                                                                        this.mConfigure.mEnableEnginePortrait = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_CUSTOMDIR_SEARCH_ALL_PATH /* 2037 */:
                                                                                        this.mConfigure.mEnableCustomDirSearchAllPath = i11;
                                                                                        break;
                                                                                    case 2100:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mEnableP2pUpload = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 2102:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mDevDiskSizeMB = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_DEV_MEMORY_SIZE_MB /* 2104 */:
                                                                                        if (i11 >= 0) {
                                                                                            this.mConfigure.mDevMemorySizeMB = i11;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 9000:
                                                                                        this.mEnableDumpLibMd5 = i11;
                                                                                        break;
                                                                                    case 9001:
                                                                                        this.mConfigure.mIgnorePlayInfo = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_HLS /* 9008 */:
                                                                                        this.mEnableHls = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_ENABLE_LIBMANAGER /* 9013 */:
                                                                                        this.mEnableLibManager = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_MUTLI_DOWNLOAD_PATH /* 9014 */:
                                                                                        if (i11 == 1 || i11 == 0) {
                                                                                            this.mConfigure.mEnableMultiDownloadPath = i11;
                                                                                            break;
                                                                                        }
                                                                                    case DATALOADER_KEY_ENABLE_HLS_PROXY /* 9016 */:
                                                                                        this.mEnableHLSProxy = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_CENTER_PRELOAD_PROGRESS /* 9017 */:
                                                                                        this.mEnableCenterPreloadProgressCallback = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_NOTIFY_ERROR /* 9018 */:
                                                                                        this.mEnableNotifyError = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_NOTIFY_NOT_ONLY_NETWORK_ERROR /* 9019 */:
                                                                                        this.mEnableNotOnlyNotifyNetError = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_PRELOAD_FIRST_TS /* 9021 */:
                                                                                        this.mEnablePreloadFirstTs = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_INT_DISABLE_FILEPATH_CHECK /* 9022 */:
                                                                                        this.mDisableFilePathCheck = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_PRELOAD_ALL_TS /* 9023 */:
                                                                                        this.mEnablePreloadAllTs = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_LOAD_MDLV2_FULLLIB /* 9030 */:
                                                                                        this.mEnableLoadMdlv2Fulllib = i11;
                                                                                        break;
                                                                                    case 12001:
                                                                                        this.mConfigure.mHlsTsFileKeyGenerateType = i11;
                                                                                        break;
                                                                                    case 12002:
                                                                                        this.mEnableVideoModelHitCacheCallback = i11;
                                                                                        break;
                                                                                    case DATALOADER_KEY_ENABLE_REPORT_HEADERS /* 12004 */:
                                                                                        this.mConfigure.mEnableReportHeaders = i11;
                                                                                        break;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 30:
                                                                                                this.mConfigure.mEncryptVersion = i11;
                                                                                                break;
                                                                                            case 31:
                                                                                                this.mConfigure.mEnableOkHttpLoader = i11;
                                                                                                break;
                                                                                            case 32:
                                                                                                if (i11 <= 0) {
                                                                                                    z10 = false;
                                                                                                }
                                                                                                this.mForbidNativeMDLForOriUrl = z10;
                                                                                                break;
                                                                                            case 33:
                                                                                                if (i11 == 0) {
                                                                                                    z10 = false;
                                                                                                }
                                                                                                this.mNeedMDLLoadMDLV2Lib = z10;
                                                                                                break;
                                                                                            case 34:
                                                                                                this.mConfigure.mEnablePcdnAuto = i11;
                                                                                                break;
                                                                                            default:
                                                                                                switch (i10) {
                                                                                                    case 63:
                                                                                                        this.mConfigure.mMaxIpCountEachDomain = i11;
                                                                                                        break;
                                                                                                    case 64:
                                                                                                        this.mConfigure.mEnableIpBucket = i11;
                                                                                                        break;
                                                                                                    case 65:
                                                                                                        this.mConfigure.mErrorStateTrustTime = i11;
                                                                                                        break;
                                                                                                    case 66:
                                                                                                        this.mConfigure.mOnlyUseCdn = i11;
                                                                                                        break;
                                                                                                    default:
                                                                                                        switch (i10) {
                                                                                                            case 90:
                                                                                                                this.mConfigure.mDNSMainType = i11;
                                                                                                                AVMDLDNSParser.setIntValue(0, i11);
                                                                                                                break;
                                                                                                            case 91:
                                                                                                                this.mConfigure.mDNSBackType = i11;
                                                                                                                AVMDLDNSParser.setIntValue(1, i11);
                                                                                                                break;
                                                                                                            case 92:
                                                                                                                this.mConfigure.mMainToBackUpDelayedTime = i11;
                                                                                                                AVMDLDNSParser.setIntValue(3, i11);
                                                                                                                break;
                                                                                                            case 93:
                                                                                                                this.mConfigure.mEnableBenchMarkIOSpeed = i11;
                                                                                                                break;
                                                                                                            case 94:
                                                                                                                this.mConfigure.mSpeedCoefficientValue = i11;
                                                                                                                break;
                                                                                                        }
                                                                                                }
                                                                                        }
                                                                                }
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.mConfigure.mEnableSessionReuse = i11;
                                                                    }
                                                                } else {
                                                                    this.mConfigure.mMaxTlsVersion = i11;
                                                                }
                                                            } else {
                                                                this.mHeartBeatInterval = i11;
                                                            }
                                                        } else {
                                                            this.mConfigure.mEnablePreloadReUse = i11;
                                                        }
                                                    } else {
                                                        this.mConfigure.mEnableMaxCacheAgeForAllDir = i11;
                                                    }
                                                } else {
                                                    this.mConfigure.mMaxCacheAge = i11;
                                                }
                                            } else {
                                                this.mConfigure.mSocketIdleTimeOut = i11;
                                            }
                                        } else {
                                            this.mConfigure.mEnableSocketReuse = i11;
                                        }
                                    } else {
                                        this.mConfigure.mEnableExternDNS = i11;
                                    }
                                } else {
                                    this.mConfigure.mLoaderType = i11;
                                    if (FeatureManager.hasPermission("pcdn") && i11 > 0) {
                                        this.mNeedDLLoadP2PLib = 1;
                                    }
                                }
                            } else {
                                this.mConfigure.mTryCount = i11;
                            }
                        } else {
                            this.mConfigure.mOpenTimeOut = i11;
                        }
                    } else {
                        this.mConfigure.mRWTimeOut = i11;
                    }
                } else {
                    this.mConfigure.mMaxCacheSize = i11;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006e -> B:25:0x0071). Please submit an issue!!! */
    public void setIntValueSync(int i10, int i11) {
        this.mLock.lock(ABLock.TYPE_READ);
        if (this.mInnerDataLoader == null) {
            this.mLock.unlock(ABLock.TYPE_READ);
            TTVideoEngineLog.d(TAG, "setIntValueSync failed, key = " + i10 + ", value = " + i11);
            return;
        }
        TTVideoEngineLog.d(TAG, "setIntValueSync key = " + i10 + ", value = " + i11);
        try {
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (i10 != 2103) {
                if (i10 == 2105 && i11 >= 0) {
                    this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsSetCurMemorySizeMB, i11);
                }
            } else if (i11 >= 0) {
                this.mInnerDataLoader.setIntValue(11003, i11);
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    public void setListener(DataLoaderListener dataLoaderListener) {
        this.mListener.setListener(dataLoaderListener);
    }

    public void setLoadProxy(LibraryLoaderProxy libraryLoaderProxy) {
        this.mLock.lock(ABLock.TYPE_WRITE);
        if (libraryLoaderProxy != null) {
            try {
                this.mProxy = libraryLoaderProxy;
            } finally {
                this.mLock.unlock(ABLock.TYPE_WRITE);
            }
        }
    }

    public void setLoaderEventListener(LoaderListener loaderListener) {
        this.mLock.lock(ABLock.TYPE_VOID);
        try {
            AVMDLDataLoader.getInstance().setEventListener(loaderListener);
        } finally {
            this.mLock.unlock(ABLock.TYPE_VOID);
        }
    }

    public void setLongValue(int i10, long j10) {
        int i11;
        this.mLock.lock(ABLock.TYPE_READ);
        TTVideoEngineLog.d(TAG, "setLongValue key = " + i10 + ", value = " + j10);
        try {
            try {
                if (i10 != 62) {
                    if (i10 != 1142) {
                        if (i10 != 1144) {
                            if (i10 != 1152) {
                                if (i10 != 1153) {
                                    switch (i10) {
                                        case 22:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoRenderStart;
                                            break;
                                        case 23:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoPlayingPos;
                                            break;
                                        case 24:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoLoadPercent;
                                            break;
                                        case 25:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoBufferingStart;
                                            break;
                                        case 26:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoBufferingEnd;
                                            break;
                                        case 27:
                                            i11 = AVMDLDataLoader.KeyIsPlayInfoCurrentBuffer;
                                            break;
                                        case 28:
                                            i11 = AVMDLDataLoader.KeyIsSetPlayInfoSeekAction;
                                            break;
                                    }
                                } else {
                                    this.mConfigure.mMonitorMinAllowLoadSize = j10;
                                }
                            } else {
                                this.mConfigure.mMonitorTimeInternal = j10;
                            }
                        } else {
                            this.mConfigure.mConnectPoolStragetyValue = j10;
                        }
                    } else {
                        this.mConfigure.mP2PStragetyLevel = j10;
                    }
                    i11 = -1;
                } else {
                    i11 = 1100;
                }
                AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
                if (aVMDLDataLoader != null) {
                    aVMDLDataLoader.setLongValue(i11, j10);
                }
            } catch (Exception unused) {
                TTVideoEngineLog.e(TAG, "setLongValue failed, key: " + i10 + ", value: " + j10);
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    public void setPlayInfo(int i10, String str, String str2, long j10) {
        int i11;
        if (this.mState != 0) {
            TTVideoEngineLog.d(TAG, "dataloader not started, not allow set play info");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        setPlayInfoOnlyForPreload(i10, str, str2, j10);
        switch (i10) {
            case 22:
                i11 = AVMDLDataLoader.KeyIsPlayInfoRenderStart;
                break;
            case 23:
                i11 = AVMDLDataLoader.KeyIsPlayInfoPlayingPos;
                break;
            case 24:
                i11 = AVMDLDataLoader.KeyIsPlayInfoLoadPercent;
                break;
            case 25:
                i11 = AVMDLDataLoader.KeyIsPlayInfoBufferingStart;
                break;
            case 26:
                i11 = AVMDLDataLoader.KeyIsPlayInfoBufferingEnd;
                break;
            case 27:
                i11 = AVMDLDataLoader.KeyIsPlayInfoCurrentBuffer;
                break;
            case 28:
                i11 = AVMDLDataLoader.KeyIsSetPlayInfoSeekAction;
                break;
            default:
                i11 = -1;
                break;
        }
        try {
            try {
                this.mInnerDataLoader.setInt64ValueByStrKey(i11, str, j10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void setPlayInfoOnlyForPreload(int i10, String str, String str2, long j10) {
        if (this.mState != 0) {
            TTVideoEngineLog.d(TAG, "dataloader not started, not allow set play info");
        } else if (this.mEnableBufferPreload <= 0) {
        } else {
            this.mLock.lock(ABLock.TYPE_READ);
            PreloadUtil preloadUtil = this.mPreloadUtil;
            if (preloadUtil.mPlayBufferLowerBound > 0 && preloadUtil.mPlayBufferUpperBound > 0) {
                preloadUtil.updatePlayInfo(i10, str, str2, j10);
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void setPreloadLogLevel(int i10) {
        if (i10 == 1) {
            i10 = 1;
        }
        if (i10 >= 4) {
            i10 = 5;
        }
        StrategyHelper.helper().setLogLevel(i10);
    }

    public void setProtectCacheDirsAvoidClear(String[] strArr) {
        TTVideoEngineLog.d(TAG, "set protect dirs avoid clear when use clear interface");
        this.mLock.lock(ABLock.TYPE_WRITE);
        try {
            this.mConfigure.setProtectCacheDirs(strArr);
        } finally {
            this.mLock.unlock(ABLock.TYPE_WRITE);
        }
    }

    public void setReportLogEnable(boolean z10) {
        this.mLock.lock(ABLock.TYPE_VOID);
        try {
            this.mReportLogEnable = z10;
        } finally {
            this.mLock.unlock(ABLock.TYPE_VOID);
        }
    }

    public void setStringValue(int i10, String str) {
        String[] split;
        TTVideoEngineLog.d(TAG, "setStringValue key = " + i10 + ", value = " + str);
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                switch (i10) {
                    case 0:
                        this.mConfigure.mCacheDir = str;
                        break;
                    case 102:
                        this.mConfigure.mNetCacheDir = str;
                        break;
                    case 107:
                        AVMDLDNSParser.setStringValue(8, str);
                        break;
                    case 108:
                        AVMDLDNSParser.setStringValue(9, str);
                        break;
                    case 111:
                        this.mConfigure.mDownloadDir = str;
                        break;
                    case 514:
                        this.mConfigure.mLiveContainerString = str;
                        break;
                    case 1106:
                        this.mConfigure.mVdpABTestId = str;
                        break;
                    case 1107:
                        this.mConfigure.mVdpGroupId = str;
                        break;
                    case DATALOADER_KEY_STRING_NETSCHEDULER_CONFIG_STR /* 1149 */:
                        this.mConfigure.mNetSchedulerConfigStr = str;
                        break;
                    case DATALOADER_KEY_STRING_DYNAMIC_PRECONNECT_CONFIG_STR /* 1165 */:
                        this.mConfigure.mDynamicPreconnectConfigStr = str;
                        break;
                    case DATALOADER_KEY_STR_SPEED_ENGINE_SETTING /* 1173 */:
                        this.mConfigure.mSpeedEngineSetting = str;
                        break;
                    case 1500:
                        this.mConfigure.mMdlExtensionOptsStr = str;
                        break;
                    case 1502:
                        this.mConfigure.mTemporaryOptStr = str;
                        break;
                    case 1506:
                    case 1507:
                    case 1508:
                        if (!TextUtils.isEmpty(str)) {
                            if (TextUtils.isEmpty(this.mConfigure.mCustomUA)) {
                                this.mConfigure.mCustomUA = str;
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure = this.mConfigure;
                                sb2.append(aVMDLDataLoaderConfigure.mCustomUA);
                                sb2.append(",");
                                sb2.append(str);
                                aVMDLDataLoaderConfigure.mCustomUA = sb2.toString();
                            }
                        }
                        TTVideoEngineLog.d(TAG, "cur custom UA" + this.mConfigure.mCustomUA);
                        break;
                    case 1510:
                        this.mConfigure.mFileRingBufferOptStr = str;
                        break;
                    case DATALOADER_KEY_STRING_N80_OPTS /* 1511 */:
                        this.mConfigure.mN80OptsStr = str;
                        break;
                    case DATALOADER_KEY_STRING_TTQUICHE_OPTS /* 1512 */:
                        this.mConfigure.mMdlTTQuicHeOptsStr = str;
                        break;
                    case 2007:
                        this.mConfigure.mStoStrategyConfig = str;
                        break;
                    case DATALOADER_KEY_STRING_PRECISE_PRELOAD_CONFIG /* 2029 */:
                        this.mConfigure.mPrecisePreloadConfigStr = str;
                        break;
                    case 2101:
                        this.mConfigure.mVdpExtGlobalInfo = str;
                        break;
                    case 9002:
                        this.mConfigure.mSettingsDomain = str;
                        break;
                    case 9003:
                        this.mConfigure.mDmDomain = str;
                        break;
                    case 9004:
                        this.mConfigure.mForesightDomain = str;
                        break;
                    case 9005:
                        this.mConfigure.mDomains = str;
                        break;
                    case DATALOADER_KEY_STRING_KEYSERVICE_DOMAINS /* 9006 */:
                        this.mConfigure.mKeyDomain = str;
                        break;
                    case DATALOADER_KEY_STRING_KEY_TOKEN /* 9007 */:
                        this.mConfigure.mKeyToken = str;
                        break;
                    case DATALOADER_KEY_STRING_IS_SOCKET_TRAIN_CENTER_CONFIG /* 9010 */:
                        this.mConfigure.mSocketTraingCenterConfigStr = str;
                        break;
                    case DATALOADER_KEY_STRING_IS_P2P_CONFIG_STR /* 9012 */:
                        this.mConfigure.mP2PConfigStr = str;
                        break;
                    case DATALOADER_KEY_STR_NOTIFY_NOT_ONLY_NETWORK_ERROR_CODES /* 9020 */:
                        for (String str2 : str.split(",")) {
                            if (!TextUtils.isEmpty(str2)) {
                                this.mNotifyNetErrors.add(Integer.valueOf(Integer.parseInt(str2)));
                            }
                        }
                        break;
                    case DATALOADER_KEY_STRING_VDP_FILE_KEY_REGULAR_EXPRESSION /* 12003 */:
                        this.mConfigure.mFileKeyRule = str;
                        break;
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0078 -> B:26:0x0070). Please submit an issue!!! */
    public void setStringValueSync(int i10, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        if (this.mInnerDataLoader == null) {
            this.mLock.unlock(ABLock.TYPE_READ);
            TTVideoEngineLog.d(TAG, "setStringValueSync failed, key = " + i10 + ", value = " + str);
            return;
        }
        TTVideoEngineLog.d(TAG, "setStringValueSync key = " + i10 + ", value = " + str);
        try {
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (i10 != 2030) {
                if (i10 == 2106) {
                    this.mInnerDataLoader.setStringValue(AVMDLDataLoader.KeyIsSetVdpExtDynamicInfo, str);
                }
                this.mLock.unlock(ABLock.TYPE_READ);
            }
            this.mInnerDataLoader.setStringValue(AVMDLDataLoader.KeyIsStoUpdateCacheDir, str);
            this.mLock.unlock(ABLock.TYPE_READ);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    public void setTaskEventListener(AVMDLTaskEventListener aVMDLTaskEventListener) {
        if (this.mInnerDataLoader == null) {
            TTVideoEngineLog.e(TAG, "need start mdl first");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        this.mInnerDataLoader.setTaskEventListener(aVMDLTaskEventListener);
        this.mLock.unlock(ABLock.TYPE_READ);
    }

    public void setTestSpeedListener(TestSpeedListener testSpeedListener) {
        this.mLock.lock(ABLock.TYPE_VOID);
        try {
            this.mTestSpeedListener = testSpeedListener;
        } finally {
            this.mLock.unlock(ABLock.TYPE_VOID);
        }
    }

    public void setUploader(IVideoEventUploader iVideoEventUploader) {
        this.mUploader = iVideoEventUploader;
    }

    public void start() throws Exception {
        int i10;
        this.mLock.lock(ABLock.TYPE_WRITE);
        try {
            if (this.mState == 0) {
                TTVideoEngineLog.e(TAG, "DataLoader has started not need start");
                if (i10 > 0) {
                    return;
                }
                return;
            }
            boolean z10 = true;
            if (!this.mDidConfigMdlV2 && InfoWrapper.isMDLV2Enable()) {
                this.mNeedMDLLoadMDLV2Lib = true;
                this.mEnableMdlV2 = 1;
                TTVideoEngineLog.i(TAG, "Enable MDLV2, config by vod settings mdlv2_enable");
            }
            this.mInitializeState = IVideoEventLogger.MdlInitializeState.Initializing.ordinal();
            if (initInternal()) {
                this.mExecuteTasks.setMaxCount(4L);
                this.mPreloadTasks.setMaxCount(20L);
                if (this.mConfigure == null) {
                    this.mConfigure = AVMDLDataLoaderConfigure.getDefaultonfigure();
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!TextUtils.isEmpty(BaseAppInfo.mAppChannel)) {
                        jSONObject.put("app_channel", BaseAppInfo.mAppChannel);
                    }
                    if (!TextUtils.isEmpty(InfoWrapper.getAppName())) {
                        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, InfoWrapper.getAppName());
                    }
                    if (!TextUtils.isEmpty(InfoWrapper.getDeviceID())) {
                        jSONObject.put("device_id", InfoWrapper.getDeviceID());
                    }
                    if (!TextUtils.isEmpty(BaseAppInfo.mAppVersion)) {
                        jSONObject.put("app_version", BaseAppInfo.mAppVersion);
                    }
                    if (!TextUtils.isEmpty(InfoWrapper.getAppID())) {
                        jSONObject.put("app_id", Integer.parseInt(InfoWrapper.getAppID()));
                    }
                    if (jSONObject.has("app_id")) {
                        this.mConfigure.mAppInfo = jSONObject.toString();
                    }
                } catch (JSONException e10) {
                    TTVideoEngineLog.d(e10);
                }
                if (this.mEngineUploader != null) {
                    this.mConfigure.mEnableReportTaskLog = 1;
                }
                if (this.mCloseLocalServer) {
                    this.mConfigure.mCloseLocalServer = 1;
                }
                changeConfigWithPermission(this.mConfigure);
                this.mInnerDataLoader.setConfigure(this.mConfigure);
                this.mDataLoaderHelperAdapter.setHLSCacheDir(this.mConfigure.mCacheDir);
                if (this.mInnerDataLoader.start() >= 0) {
                    startVCTrace();
                    TTVideoEngineLog.i(TAG, "[preload] preload strategy " + this.mMdlPreloadStrategy);
                    tryStartStrategyCenter();
                    long longValue = this.mInnerDataLoader.getLongValue(AVMDLDataLoader.KeyIsGetMdlProtocolHandle);
                    this.mMdlProtocolHandle = longValue;
                    if (longValue == -1) {
                        this.mInvalidMdlProcotol = true;
                    }
                    if (this.mEnableFirstNativeMDL == 1 && this.mEnableMdlProtocol && longValue > 0) {
                        Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, PLAYER_CLASS_NAME);
                        Method declaredMethod = clzUsingPluginLoader.getDeclaredMethod("registerNativeMdl", Long.TYPE);
                        declaredMethod.setAccessible(true);
                        if (((Integer) declaredMethod.invoke(clzUsingPluginLoader, Long.valueOf(this.mMdlProtocolHandle))).intValue() == 0) {
                            TTVideoEngineLog.i(TAG, "firstNativeMDL effect");
                            TTVideoEngineImpl.setNativeMDLRegister();
                            this.mInvalidMdlProcotol = false;
                        }
                    }
                    if (this.mInnerDataLoader.getLongValue(AVMDLDataLoader.KeyIsGetEnableHls) != 1) {
                        z10 = false;
                    }
                    this.mSupportHls = z10;
                    TTVideoEngineLog.i(TAG, "start: get mdlprotocolHandle: " + this.mMdlProtocolHandle);
                    this.mHeartBeat.start(this.mInnerDataLoader, this.mHeartBeatInterval);
                    this.mState = 0;
                    if (this.mInnerDataloaderStartComplete && this.mInitializeState == IVideoEventLogger.MdlInitializeState.Initializing.ordinal()) {
                        this.mInitializeState = IVideoEventLogger.MdlInitializeState.InitializeComplete.ordinal();
                    }
                    this.mNetWorkChangeCb = new TTNetworkStateCallback() { // from class: com.ss.ttvideoengine.DataLoaderHelper.3
                        @Override // com.ss.ttvideoengine.TTNetworkStateCallback
                        public void onAccessChanged(int i11, int i12, int i13) {
                            if (i11 != 0) {
                                return;
                            }
                            TTVideoEngineLog.d(DataLoaderHelper.TAG, "access changed, from: " + i12 + " to: " + i13);
                            DataLoaderHelper.this.mCurrentAccessType = i13;
                            DataLoaderHelper.this.setIntValue(1000, 1);
                            DataLoaderHelper.this.setIntValue(1104, i13);
                        }
                    };
                    this.mNetWorkChangeCbr = new WeakReference<>(this.mNetWorkChangeCb);
                    TTNetWorkListener.getInstance().startListen(this.mNetWorkChangeCbr);
                    int longValue2 = (int) this.mInnerDataLoader.getLongValue(AVMDLDataLoader.KeyIsGetDemuxerVersion);
                    this.mDemuxerHandle = MediaPlayerWrapper.getDemuxerFactory(longValue2);
                    TTVideoEngineLog.d(TAG, "KeyIsGetDemuxerVersion: " + longValue2 + ", handle: " + this.mDemuxerHandle);
                    if (this.mDemuxerHandle != 0) {
                        TTVideoEngineLog.d(TAG, "set KeyIsSetDemuxerHandle");
                        this.mInnerDataLoader.setLongValue(AVMDLDataLoader.KeyIsSetDemuxerHandle, this.mDemuxerHandle);
                    }
                    TTVideoEngineLog.d(TAG, "DataLoader start.");
                    this.mLock.unlock(ABLock.TYPE_WRITE);
                    if (EngineGlobalConfig.getInstance().enableMdlLockOptimizeV2 > 0) {
                        this.mLock.updateLockType(ABLock.LOCK_IMPL_VOID);
                        return;
                    }
                    return;
                }
                this.mInitializeState = IVideoEventLogger.MdlInitializeState.InitializeError.ordinal();
                this.mInitializeErrorString = "start data loader fail";
                throw new Exception("start data loader fail");
            }
            String str = "initMdlFail:" + AVMDLDataLoader.getLoadFailMsg();
            this.mInitializeState = IVideoEventLogger.MdlInitializeState.InitializeError.ordinal();
            throw new Exception(str);
        } finally {
            this.mLock.unlock(ABLock.TYPE_WRITE);
            if (EngineGlobalConfig.getInstance().enableMdlLockOptimizeV2 > 0) {
                this.mLock.updateLockType(ABLock.LOCK_IMPL_VOID);
            }
        }
    }

    public boolean startDownload(String str) {
        return startDownload(str, false);
    }

    public void suspendPreconnect() {
        if (this.mInnerDataLoader == null) {
            TTVideoEngineLog.e(TAG, "need start mdl first");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        this.mInnerDataLoader.suspendPreconnect();
        this.mLock.unlock(ABLock.TYPE_READ);
    }

    public void suspendedDownload(String str) {
        AVMDLDataLoader aVMDLDataLoader;
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!this.mDataLoaderHelperAdapter.cancelDownload(str) && (aVMDLDataLoader = this.mInnerDataLoader) != null) {
            aVMDLDataLoader.suspendDownload(str);
            TTVideoEngineLog.i(TAG, "[downloader] suspended download, key = " + str);
        }
    }

    public void switchToCellularNetwork() {
        TTVideoEngineLog.d("multinetwork", "start do switch to cellular");
        AVMDLMultiNetwork.switchToCellularNetwork();
        TTVideoEngineLog.d("multinetwork", "end do switch to cellular");
    }

    public void switchToDefaultNetwork() {
        TTVideoEngineLog.d("multinetwork", "start do switch to default");
        AVMDLMultiNetwork.switchToDefaultNetwork();
        TTVideoEngineLog.d("multinetwork", "end do switch to default");
    }

    public long tryQuickGetCacheFileSize(String str) {
        long j10 = 0;
        if (this.mState != 0) {
            return 0L;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader != null) {
                long tryQuickGetCacheSize = aVMDLDataLoader.tryQuickGetCacheSize(str);
                if (tryQuickGetCacheSize > 0) {
                    j10 = tryQuickGetCacheSize;
                }
            }
        } finally {
            try {
                return j10;
            } finally {
            }
        }
        return j10;
    }

    public void tryStartStrategyCenter() {
        boolean z10;
        if (this.mConfigure.mEnableIOManager != 0) {
            long longValue = this.mInnerDataLoader.getLongValue(AVMDLDataLoader.KeyIsGetIOManagerHandle);
            long longValue2 = this.mInnerDataLoader.getLongValue(AVMDLDataLoader.KeyIsGetIOManagerInterfaceVersion);
            if (longValue != 0 && longValue != -1 && longValue != -998 && longValue2 >= 0) {
                this.mediaOperateThread = new PreloadMediaThread();
                StrategyHelper.helper().setIOManager(longValue, longValue2);
                StrategyHelper.helper().setContext(this.mContext);
                if (this.mProxy != null) {
                    z10 = StrategyHelper.helper().loadPluginLibrary(this.mProxy);
                } else {
                    z10 = false;
                }
                StrategyHelper.helper().start(!z10);
                TTVideoEngineLog.d(TAG, "after start strategy center running=" + StrategyHelper.helper().isRunning());
                StrategyHelper.helper().configAppInfo(BaseAppInfo.toJsonString(), null);
                StrategyHelper.helper().getCenter().businessEvent(StrategyCenter.APP_CONFIG_SESSION_ID, VideoEventBase.appSessionId);
                StrategyHelper.helper().getCenter().businessEvent(StrategyCenter.APP_CONFIG_CACHE_DIR, this.mConfigure.mCacheDir);
                if (this.mInnerDataLoader.isRunning()) {
                    if (!StrategyHelper.helper().isRunning()) {
                        TTVideoEngineLog.d(TAG, "strategy center start failed, set mdl preload strategy back " + this.mMdlOldPreloadStrategy);
                        this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, this.mMdlOldPreloadStrategy);
                        return;
                    }
                    this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, this.mMdlPreloadStrategy);
                    return;
                }
                return;
            }
            TTVideoEngineLog.d(TAG, "tryStartStrategyCenter iomanagerHandle or iomanagerVersion is not validiomanagerHandle=" + longValue + " iomanagerVersion=" + longValue2);
        }
    }

    public long tryToClearAndGetCachesByUsedTime(long j10, boolean z10) {
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            AVMDLDataLoader aVMDLDataLoader = this.mInnerDataLoader;
            if (aVMDLDataLoader == null) {
                this.mLock.unlock(ABLock.TYPE_READ);
                return -1L;
            }
            return aVMDLDataLoader.tryToClearAndGetCachesByUsedTime(j10, z10);
        } catch (Throwable th2) {
            try {
                TTVideoEngineLog.d(th2);
                this.mLock.unlock(ABLock.TYPE_READ);
                return 0L;
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    public void tryToClearCachesByUsedTime(long j10) {
        AVMDLDataLoader aVMDLDataLoader;
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            aVMDLDataLoader = this.mInnerDataLoader;
        } finally {
            try {
            } finally {
            }
        }
        if (aVMDLDataLoader == null) {
            return;
        }
        aVMDLDataLoader.tryToClearCachesByUsedTime(j10);
    }

    public void updateCurrentNetStatus() {
        if (this.mState != 0) {
            TTVideoEngineLog.d(TAG, "dataloader not started, not allow set play info");
        } else if (this.mEnableSetMDLNetStatus <= 0) {
        } else {
            this.mLock.lock(ABLock.TYPE_READ);
            this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsUpdateNetworkStrength, TTNetWorkListener.getInstance().getCurrentAccessStrength());
            this.mInnerDataLoader.setIntValue(AVMDLDataLoader.KeyIsUpdateNetworkScore, PortraitNetworkScore.getInstance().getPortraitResult());
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    public void updateDnsInfo(JSONObject jSONObject, long j10) {
        String next;
        if (jSONObject == null) {
            TTVideoEngineLog.e(TAG, "ip direct info invalid");
            return;
        }
        long j11 = NetUtils.netUpdateTimeMs;
        if (j11 != -1 && 1000 * j10 < j11) {
            TTVideoEngineLog.e(TAG, "network did change, dnsinfo is invalid");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            try {
                Iterator<String> keys = jSONObject.keys();
                do {
                    next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    String str = "";
                    for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                        str = str + optJSONArray.optString(i10);
                        if (i10 < optJSONArray.length() - 1) {
                            str = str + ",";
                        }
                    }
                    AVMDLDNSParser.updateDNSInfo(next, str, j10);
                    if (!keys.hasNext()) {
                        break;
                    }
                } while (!TextUtils.isEmpty(next));
            } catch (Exception e10) {
                TTVideoEngineLog.e(TAG, e10.toString());
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        } catch (Throwable th2) {
            this.mLock.unlock(ABLock.TYPE_READ);
            throw th2;
        }
    }

    public void updateLockType(int i10) {
        this.mLock.updateLockType(i10);
    }

    public int writeDataToFile(String str, long j10, long j11, int i10, byte[] bArr) {
        if (this.mState != 0) {
            TTVideoEngineLog.e(TAG, "not start");
            return -1;
        }
        int i11 = 0;
        if (this.mLock.tryLock(ABLock.TYPE_READ)) {
            if (this.mInnerDataLoader != null) {
                TTVideoEngineLog.d(TAG, "start write");
                i11 = this.mInnerDataLoader.writeDataToFile(str, j10, j11, i10, bArr);
                TTVideoEngineLog.d(TAG, "end write");
            }
            this.mLock.unlock(ABLock.TYPE_READ);
        }
        TTVideoEngineLog.d(TAG, "write data to file ret:" + i11);
        return i11;
    }

    private DataLoaderHelper() {
        this.isProxyLibraryLoaded = false;
        this.mProxy = null;
        this.mListener = new DataLoaderListenerWrapper();
        this.mTestSpeedListener = null;
        this.mState = 1;
        this.mPreloadTasks = new DataLoaderTaskQueue();
        this.mExecuteTasks = new DataLoaderTaskQueue();
        this.mAllPreloadTasks = new DataLoaderTaskQueue();
        this.mAllPlayTasks = new DataLoaderTaskQueue();
        this.mAllUsingEngies = new HashMap<>();
        this.mEngineLock = new ReentrantLock();
        this.mInnerDataLoader = null;
        this.mConfigure = null;
        this.mVCTrace = null;
        this.mDataLoaderHelperAdapter = new DataLoaderHelperAdapter();
        this.mContext = null;
        this.mClasssLoader = null;
        this.mModelCache = null;
        this.mException = null;
        this.mVersionInfo = null;
        this.mHeartBeat = null;
        this.mUploader = null;
        this.mEngineUploader = null;
        this.mNeedDLLoadP2PLib = 0;
        this.mNeedMDLLoadMDLV2Lib = false;
        this.mMdlProtocolHandle = -1L;
        this.mDemuxerHandle = 0L;
        this.mInvalidMdlProcotol = true;
        this.mMdlDataSourceId = 0;
        this.mEnableMdlProtocol = false;
        this.mHeartBeatInterval = 0;
        this.mEnableReportSpeed = 0;
        this.mEnableNetworkChangedListen = 0;
        this.mNetWorkChangeCb = null;
        this.mNetWorkChangeCbr = null;
        this.mCurrentAccessType = -1;
        this.mEnableDumpLibMd5 = 0;
        this.mNeedSpeedTestByTimeInternal = 0;
        this.mAudioPreloadFirst = false;
        this.mPreloadTaskIgnorePlayerStall = 1;
        this.mUpdatePlaySourceId = null;
        this.mFloatSize = 0;
        this.mPreloadPreConnect = 0;
        this.mEnablePreParseHost = 0;
        this.mEnableBackupIP = 0;
        this.mEnableFirstNativeMDL = 0;
        this.mCloseLocalServer = false;
        this.mEnableHls = 0;
        this.mSupportHls = false;
        this.mediaOperateThread = null;
        this.mReportLogEnable = true;
        this.mBackupLoaderType = 0;
        this.mMdlPreloadStrategy = 0;
        this.mMdlOldPreloadStrategy = 0;
        this.mEnableMdlV2 = 0;
        this.mDidConfigMdlV2 = false;
        this.mEnableBufferPreload = 0;
        this.mEnableSetMDLNetStatus = 0;
        this.mEnableStrategyCenterCancelAll = 0;
        this.mEnableCheckPreloadUrls = 0;
        this.mEnableSplitPreload = 0;
        this.mDashAudioPreloadMinSize = 0;
        this.mDashAudioPreloadRatio = 0;
        this.mForbidNativeMDLForOriUrl = false;
        this.mPreloadUtil = new PreloadUtil();
        this.mEnableLibManager = 0;
        this.mEnableHLSProxy = 0;
        this.mEnablePreloadFirstTs = 0;
        this.mEnablePreloadAllTs = 0;
        this.mEnableLoadMdlv2Fulllib = 0;
        this.mEnableVideoModelHitCacheCallback = 1;
        this.mHLSProxyValid = false;
        this.mEnableCenterPreloadProgressCallback = 0;
        this.mEnableNotifyError = 0;
        this.mEnableNotOnlyNotifyNetError = 0;
        this.mDisableFilePathCheck = 0;
        this.mNotifyNetErrors = new ArrayList<>();
        this.mInvalidCode = IVideoEventLogger.MdlInvalidCode.None.ordinal();
        this.mInitializeState = IVideoEventLogger.MdlInitializeState.Default.ordinal();
        this.mInnerDataloaderStartComplete = false;
        this.mInitializeErrorString = null;
        this.mModelCache = VideoModelCache.getInstance();
        this.mState = 1;
        this.mConfigure = AVMDLDataLoaderConfigure.getDefaultonfigure();
        this.mVCTrace = new VCTrace();
        this.mLock = new ABLockWrapper(EngineGlobalConfig.getInstance().dataLoaderHelperLockType);
        this.mEnableHls = 1;
        this.mEnableHLSProxy = 1;
        this.mConfigure.mDNSBackType = 0;
        AVMDLDNSParser.mGlobalBackType = 0;
    }

    private String preloadProxyQuery(String str, String str2, long j10, long j11, String[] strArr, String str3, String str4, int i10, String str5, boolean z10, String str6, int i11, long j12, String str7, int i12, int i13) {
        String str8;
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length < 1) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        long j13 = j11 > 0 ? j11 : 0L;
        for (String str9 : strArr2) {
            if (!_supportProxy(str9)) {
                return null;
            }
        }
        String[] _removeRepeatUrls = _removeRepeatUrls(strArr2);
        String encodeUrl = TTHelper.encodeUrl(str);
        if (TextUtils.isEmpty(encodeUrl)) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preloadProxyQuery: key = ");
        sb2.append(str);
        sb2.append(", rawKey = ");
        String str10 = str2;
        sb2.append(str10);
        TTVideoEngineLog.i(TAG, sb2.toString());
        if (TextUtils.isEmpty(str2)) {
            str10 = str;
        }
        String encodeUrl2 = TTHelper.encodeUrl(str10);
        if (TextUtils.isEmpty(encodeUrl2)) {
            encodeUrl2 = "videoId";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?rk=");
        stringBuffer.append(encodeUrl2);
        stringBuffer.append("&k=");
        stringBuffer.append(encodeUrl);
        if (j13 > 0) {
            stringBuffer.append("&s=");
            stringBuffer.append(j10 + j13);
        }
        if (i10 > 0) {
            stringBuffer.append("&l=");
            stringBuffer.append(i10);
        }
        if (!TextUtils.isEmpty(str3)) {
            String encodeUrl3 = TTHelper.encodeUrl(str3);
            if (!TextUtils.isEmpty(encodeUrl3)) {
                stringBuffer.append("&p=");
                stringBuffer.append(encodeUrl3);
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            String encodeUrl4 = TTHelper.encodeUrl(str5);
            if (!TextUtils.isEmpty(encodeUrl4)) {
                stringBuffer.append("&h=");
                stringBuffer.append(encodeUrl4);
            }
        }
        if (!TextUtils.isEmpty(str7)) {
            stringBuffer.append("&gid=");
            stringBuffer.append(str7);
        }
        if (z10 || FormatProvider.FormatProviderHolder.isM3u8(_removeRepeatUrls[0])) {
            stringBuffer.append("&ft=1");
        }
        if (i11 > 0) {
            stringBuffer.append("&ev=" + i11);
        }
        if (j12 > 0) {
            stringBuffer.append("&ue=" + j12);
        }
        if (!TextUtils.isEmpty(str6)) {
            String encodeUrl5 = TTHelper.encodeUrl(str6);
            if (!TextUtils.isEmpty(encodeUrl5)) {
                stringBuffer.append("&dtk=");
                stringBuffer.append(encodeUrl5);
            }
        }
        if (i12 > 0) {
            stringBuffer.append("&play_index_gap=" + i12);
        }
        if (i13 > 0) {
            stringBuffer.append("&retry_err_cnt=" + i13);
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i14 = 0; i14 < _removeRepeatUrls.length; i14++) {
            if (this.mConfigure.mEnableUseOriginalUrl == 1) {
                try {
                    str8 = URLEncoder.encode(_removeRepeatUrls[i14], "UTF-8");
                } catch (UnsupportedEncodingException unused) {
                    TTVideoEngineLog.d("TTHelperEncode", "encode failed:" + _removeRepeatUrls[i14]);
                    str8 = null;
                }
            } else {
                str8 = encodeUrlByQuery(_removeRepeatUrls[i14]);
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            if (!TextUtils.isEmpty(str8)) {
                stringBuffer3.append("&u");
                stringBuffer3.append(i14);
                stringBuffer3.append(ContainerUtils.KEY_VALUE_DELIMITER);
                stringBuffer3.append(str8);
            }
            if (stringBuffer.length() + stringBuffer2.length() + stringBuffer3.length() + 32 > MAX_URL_LENGTH) {
                break;
            }
            stringBuffer2.append(stringBuffer3);
        }
        if (stringBuffer2.length() < 1) {
            return null;
        }
        stringBuffer.append(stringBuffer2);
        if (!TextUtils.isEmpty(str4) && stringBuffer.length() + str4.length() + 33 <= MAX_URL_LENGTH) {
            stringBuffer.append(ContainerUtils.FIELD_DELIMITER);
            stringBuffer.append(str4);
        }
        return stringBuffer.toString();
    }

    private String proxyQuery(String str, String str2, long j10, long j11, String[] strArr, String str3, String str4, boolean z10, String str5, int i10, long j12) {
        return preloadProxyQuery(str, str2, j10, j11, strArr, str3, str4, 0, null, z10, str5, i10, j12, "", -1, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0145 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d A[Catch: all -> 0x00af, TRY_ENTER, TryCatch #0 {all -> 0x00af, blocks: (B:38:0x0094, B:40:0x009a, B:42:0x00a2, B:53:0x00cd, B:55:0x00e9, B:57:0x00ed, B:59:0x00f3, B:61:0x00fd, B:67:0x0109, B:70:0x010f, B:74:0x013b, B:78:0x014d, B:80:0x015a, B:83:0x0164, B:85:0x0185, B:87:0x019c, B:89:0x01aa, B:91:0x01b1, B:96:0x01c1, B:98:0x01d9, B:100:0x01e4, B:95:0x01be, B:84:0x0175, B:48:0x00b4, B:50:0x00c0), top: B:113:0x0094 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String _proxyUrl(java.lang.String r24, java.lang.String r25, long r26, java.lang.String[] r28, com.ss.ttvideoengine.Resolution r29, java.lang.String r30, com.ss.ttvideoengine.model.VideoInfo r31, java.lang.String r32, java.lang.String r33, boolean r34, boolean r35, java.lang.String r36, long r37, java.lang.String[] r39, int r40, java.lang.String r41, boolean r42, java.lang.String r43, java.lang.String r44) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper._proxyUrl(java.lang.String, java.lang.String, long, java.lang.String[], com.ss.ttvideoengine.Resolution, java.lang.String, com.ss.ttvideoengine.model.VideoInfo, java.lang.String, java.lang.String, boolean, boolean, java.lang.String, long, java.lang.String[], int, java.lang.String, boolean, java.lang.String, java.lang.String):java.lang.String");
    }

    public void clearAllCaches(boolean z10) {
        AVMDLDataLoader aVMDLDataLoader;
        if (this.mState != 0) {
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            this.mDataLoaderHelperAdapter.removeAllHLSCache();
            aVMDLDataLoader = this.mInnerDataLoader;
        } finally {
            try {
            } finally {
            }
        }
        if (aVMDLDataLoader == null) {
            TTVideoEngineLog.e(TAG, "mInnerDataLoader == null");
            return;
        }
        if (z10) {
            aVMDLDataLoader.forceClearAllCaches();
        } else {
            aVMDLDataLoader.clearAllCaches();
        }
    }

    public String proxyUrl(String str, String str2, String[] strArr, Resolution resolution, String str3) {
        return _proxyUrl(str, str2, 0L, strArr, resolution, str3, null, null, null, false, false, null, 0L, null, -1, null, false);
    }

    public boolean startDownload(String str, boolean z10) {
        boolean z11 = false;
        if (FeatureManager.hasPermission() && this.mState == 0) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                if (this.mInnerDataLoader != null && !TextUtils.isEmpty(str)) {
                    if (!(z10 ? this.mDataLoaderHelperAdapter.downloadHlsSource(str) : false)) {
                        this.mInnerDataLoader.downloadResource(str);
                    }
                    TTVideoEngineLog.i(TAG, "[downloader] start download resource = " + str);
                    z11 = true;
                }
            } catch (Throwable th2) {
                try {
                    TTVideoEngineLog.d(th2);
                } catch (Throwable unused) {
                }
            }
            this.mLock.unlock(ABLock.TYPE_READ);
            return z11;
        }
        return false;
    }

    public String downloadUrl(String str, @Nullable String str2, String[] strArr, int i10) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length < 1) {
            return null;
        }
        return proxyQuery(str, str2, 0L, 0L, strArr, null, null, false, null, i10, 0L);
    }

    public String proxyUrl(String str, String str2, String[] strArr, Resolution resolution, String str3, String str4) {
        return _proxyUrl(str, str2, 0L, strArr, resolution, str3, null, str4, null, false, false, null, 0L, null, -1, null, false);
    }

    public String downloadUrl(String str, @Nullable String str2, String[] strArr, int i10, String str3) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length < 1) {
            return null;
        }
        return proxyQuery(str, str2, 0L, 0L, strArr, str3, null, false, null, i10, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class DataLoaderTaskQueue {
        private final ReentrantLock mLock;
        private long mMaxCount;
        private final ArrayList<DataLoaderTaskItem> mTaskItems;

        private DataLoaderTaskQueue() {
            this.mLock = new ReentrantLock();
            this.mTaskItems = new ArrayList<>();
            this.mMaxCount = 0L;
        }

        private Boolean _enoughItems() {
            boolean z10;
            if (this.mMaxCount >= 1) {
                if (this.mTaskItems.size() >= this.mMaxCount) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
            return Boolean.FALSE;
        }

        public DataLoaderTaskItem backItem() {
            this.mLock.lock();
            if (this.mTaskItems.size() == 0) {
                this.mLock.unlock();
                return null;
            }
            ArrayList<DataLoaderTaskItem> arrayList = this.mTaskItems;
            DataLoaderTaskItem dataLoaderTaskItem = arrayList.get(arrayList.size() - 1);
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public boolean containItem(String str) {
            int i10 = 0;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Boolean bool = Boolean.FALSE;
            this.mLock.lock();
            while (true) {
                if (i10 >= this.mTaskItems.size()) {
                    break;
                } else if (this.mTaskItems.get(i10).getTrackItem(str) != null) {
                    bool = Boolean.TRUE;
                    break;
                } else {
                    i10++;
                }
            }
            this.mLock.unlock();
            return bool.booleanValue();
        }

        public long count() {
            this.mLock.lock();
            long size = this.mTaskItems.size();
            this.mLock.unlock();
            return size;
        }

        boolean enqueueItem(DataLoaderTaskItem dataLoaderTaskItem) {
            Boolean bool;
            if (dataLoaderTaskItem == null || dataLoaderTaskItem.mTracks.size() == 0) {
                return false;
            }
            this.mLock.lock();
            if (_enoughItems().booleanValue()) {
                bool = Boolean.FALSE;
            } else {
                this.mTaskItems.add(dataLoaderTaskItem);
                bool = Boolean.TRUE;
            }
            this.mLock.unlock();
            return bool.booleanValue();
        }

        public DataLoaderTaskItem frontItem() {
            this.mLock.lock();
            if (this.mTaskItems.size() == 0) {
                this.mLock.unlock();
                return null;
            }
            DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItems.get(0);
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem itemForKey(String str) {
            DataLoaderTaskItem dataLoaderTaskItem = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.mLock.lock();
            int i10 = 0;
            while (true) {
                if (i10 >= this.mTaskItems.size()) {
                    break;
                }
                DataLoaderTaskItem dataLoaderTaskItem2 = this.mTaskItems.get(i10);
                if (dataLoaderTaskItem2.getTrackItem(str) != null) {
                    dataLoaderTaskItem = dataLoaderTaskItem2;
                    break;
                }
                i10++;
            }
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem itemForVideoId(String str) {
            DataLoaderTaskItem dataLoaderTaskItem = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.mLock.lock();
            int i10 = 0;
            while (true) {
                if (i10 >= this.mTaskItems.size()) {
                    break;
                }
                DataLoaderTaskItem dataLoaderTaskItem2 = this.mTaskItems.get(i10);
                if (!TextUtils.isEmpty(dataLoaderTaskItem2.mVideoId) && dataLoaderTaskItem2.mVideoId.equals(str)) {
                    dataLoaderTaskItem = dataLoaderTaskItem2;
                    break;
                }
                i10++;
            }
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem popBackItem() {
            this.mLock.lock();
            if (this.mTaskItems.size() == 0) {
                this.mLock.unlock();
                return null;
            }
            ArrayList<DataLoaderTaskItem> arrayList = this.mTaskItems;
            DataLoaderTaskItem dataLoaderTaskItem = arrayList.get(arrayList.size() - 1);
            this.mTaskItems.remove(dataLoaderTaskItem);
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem popFrontItem() {
            this.mLock.lock();
            if (this.mTaskItems.size() == 0) {
                this.mLock.unlock();
                return null;
            }
            DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItems.get(0);
            this.mTaskItems.remove(dataLoaderTaskItem);
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem popItem(String str) {
            DataLoaderTaskItem dataLoaderTaskItem = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.mLock.lock();
            int i10 = 0;
            while (true) {
                if (i10 >= this.mTaskItems.size()) {
                    break;
                }
                DataLoaderTaskItem dataLoaderTaskItem2 = this.mTaskItems.get(i10);
                if (dataLoaderTaskItem2.getTrackItem(str) != null) {
                    dataLoaderTaskItem = dataLoaderTaskItem2;
                    break;
                }
                i10++;
            }
            if (dataLoaderTaskItem != null) {
                this.mTaskItems.remove(dataLoaderTaskItem);
            }
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public DataLoaderTaskItem popItemForVideoId(String str) {
            DataLoaderTaskItem dataLoaderTaskItem = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.mLock.lock();
            int i10 = 0;
            while (true) {
                if (i10 >= this.mTaskItems.size()) {
                    break;
                }
                DataLoaderTaskItem dataLoaderTaskItem2 = this.mTaskItems.get(i10);
                if (!TextUtils.isEmpty(dataLoaderTaskItem2.mVideoId) && dataLoaderTaskItem2.mVideoId.equals(str)) {
                    dataLoaderTaskItem = dataLoaderTaskItem2;
                    break;
                }
                i10++;
            }
            if (dataLoaderTaskItem != null) {
                this.mTaskItems.remove(dataLoaderTaskItem);
            }
            this.mLock.unlock();
            return dataLoaderTaskItem;
        }

        public void removeAll() {
            try {
                this.mLock.lock();
                this.mTaskItems.clear();
            } finally {
                this.mLock.unlock();
            }
        }

        public void setMaxCount(long j10) {
            this.mMaxCount = j10;
        }

        public ArrayList<DataLoaderTaskItem> toArray() {
            try {
                this.mLock.lock();
                ArrayList<DataLoaderTaskItem> arrayList = new ArrayList<>();
                arrayList.addAll(this.mTaskItems);
                return arrayList;
            } finally {
                this.mLock.unlock();
            }
        }

        public DataLoaderTaskItem popItem(DataLoaderTaskItem dataLoaderTaskItem) {
            DataLoaderTaskItem dataLoaderTaskItem2;
            if (TextUtils.isEmpty(dataLoaderTaskItem.mVideoId)) {
                dataLoaderTaskItem2 = null;
            } else {
                dataLoaderTaskItem2 = popItemForVideoId(dataLoaderTaskItem.mVideoId);
                if (dataLoaderTaskItem2 != null) {
                    return dataLoaderTaskItem2;
                }
            }
            Iterator<DataLoaderTaskItem.TrackItem> it = dataLoaderTaskItem.mTracks.iterator();
            while (it.hasNext() && (dataLoaderTaskItem2 = popItem(it.next().mTaskKey)) == null) {
            }
            return dataLoaderTaskItem2;
        }
    }

    public void addTask(PreloaderVidItem preloaderVidItem) {
        if (preloaderVidItem != null && this.mState == 0) {
            if (TextUtils.isEmpty(preloaderVidItem.mVideoId)) {
                TTVideoEngineLog.e(TAG, "videoId invalid.");
                return;
            }
            String str = preloaderVidItem.mVideoId + "_" + preloaderVidItem.mResolution.toString(0) + preloaderVidItem.mCodecType + preloaderVidItem.mDashEnable + preloaderVidItem.mHlsEnable + preloaderVidItem.mEncryptEnable;
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                _addTask(str, preloaderVidItem.mVideoId, preloaderVidItem.mPreloadSize, preloaderVidItem, null, null);
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
    }

    @Override // com.ss.mediakit.medialoader.AVMDLDataLoaderListener
    public String getStringValue(int i10, long j10, String str) {
        PreloaderURLItem preloaderURLItem;
        String str2 = str;
        TTVideoEngineLog.i(TAG, "[preload] getStringValue, key = " + str2);
        String str3 = null;
        if (i10 != 1506) {
            if (i10 == 1509 && this.mListener != null && !TextUtils.isEmpty(str)) {
                HashMap<String, String> customHttpHeaders = this.mListener.getCustomHttpHeaders(str2);
                if (customHttpHeaders == null || customHttpHeaders.size() == 0) {
                    return null;
                }
                StringBuilder sb2 = new StringBuilder();
                for (String str4 : customHttpHeaders.keySet()) {
                    if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(customHttpHeaders.get(str4))) {
                        sb2.append(str4);
                        sb2.append(": ");
                        sb2.append(customHttpHeaders.get(str4));
                        sb2.append("\r\n");
                    }
                }
                TTVideoEngineLog.i(TAG, String.format("[customheader] get custom header:%s url: %s", str2, sb2.toString()));
                return sb2.toString();
            }
        } else {
            DataLoaderTaskQueue dataLoaderTaskQueue = this.mAllPreloadTasks;
            DataLoaderTaskItem itemForKey = dataLoaderTaskQueue != null ? dataLoaderTaskQueue.itemForKey(str2) : null;
            TTVideoEngineLog.i(TAG, "[preload] getStringValue, key = " + str2);
            if (itemForKey != null && (preloaderURLItem = itemForKey.mURLItem) != null && preloaderURLItem.getProvider() != null) {
                String key = itemForKey.mURLItem.getProvider().getKey();
                String[] urls = itemForKey.mURLItem.getProvider().getUrls();
                DataLoaderTaskItem.TrackItem trackItem = itemForKey.getTrackItem(str2);
                long j11 = trackItem.mPreSize;
                str3 = proxyQuery(key, key, trackItem.mPreloadOffset, itemForKey.mURLItem.getProvider().getPreloadSize(), urls, itemForKey.mURLItem.getProvider().getCacheDir(), itemForKey.mTag != null ? "tag=" + TTHelper.encodeUrl(itemForKey.mTag) : null, false, null, -1);
                if (!TextUtils.isEmpty(key)) {
                    str2 = key;
                }
                trackItem.mTaskKey = str2;
                TTVideoEngineLog.i(TAG, String.format("[preload] get proxxy url from url: %s", str3));
            }
        }
        return str3;
    }

    private void startVCTrace() {
    }

    public void addTask(PreloaderURLItem preloaderURLItem) {
        if (preloaderURLItem == null) {
            TTVideoEngineLog.e(TAG, "[preload] url item invalid");
            return;
        }
        this.mLock.lock(ABLock.TYPE_READ);
        try {
            _addTask(preloaderURLItem.getKey(), preloaderURLItem.getVideoId(), preloaderURLItem.getPreloadSize(), null, null, preloaderURLItem);
        } finally {
            this.mLock.unlock(ABLock.TYPE_READ);
        }
    }

    /* loaded from: classes6.dex */
    public static class DataLoaderTaskItem {
        public String mVideoId = null;
        public IVideoModel mResponseData = null;
        public Error mResponseError = null;
        public long mPreloadSize = 0;
        public long mPreloadMilliSecondOffset = 0;
        public float mPreloadSecond = 0.0f;
        public long mTimePreloadLowerLimitSize = 0;
        public long mTimePreloadUpperLimitSize = 0;
        public int mPriorityLevel = 0;
        public Resolution mSetResolution = Resolution.Undefine;
        public VideoInfoFetcher mFetcher = null;
        public TaskListener mListener = null;
        public PreloaderVidItem mVidItem = null;
        public String mApiString = null;
        public String mGroupId = "";
        public PreloaderVideoModelItem mVideoModelItem = null;
        public PreloaderURLItem mURLItem = null;
        public boolean mDidCanceled = false;
        public PreloadMedia mPreloadMedia = null;
        public String mTag = null;
        public String mSubTag = null;
        public int mPlayIndexGap = -1;
        public List<TrackItem> mTracks = new CopyOnWriteArrayList();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static class MySmartUrlFetcherListener implements SmartUrlFetcher.Callback {
            private final WeakReference<DataLoaderTaskItem> mTaskItemRef;

            public MySmartUrlFetcherListener(DataLoaderTaskItem dataLoaderTaskItem) {
                this.mTaskItemRef = new WeakReference<>(dataLoaderTaskItem);
            }

            @Override // com.ss.ttvideoengine.source.strategy.SmartUrlFetcher.Callback
            public void onComplete(@NonNull SmartUrlFetcher.RequestParams requestParams, int i10, @NonNull SmartUrlFetcher.Result result) {
                DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItemRef.get();
                if (dataLoaderTaskItem == null) {
                    return;
                }
                TTVideoEngineLog.d(DataLoaderHelper.TAG, "fetchSmartUrlInfo success " + result);
                dataLoaderTaskItem.mResponseData = result.videoModel;
                TaskListener taskListener = dataLoaderTaskItem.mListener;
                if (taskListener != null) {
                    taskListener.taskFinished(dataLoaderTaskItem);
                }
            }

            @Override // com.ss.ttvideoengine.source.strategy.SmartUrlFetcher.Callback
            public void onError(@NonNull SmartUrlFetcher.RequestParams requestParams, @NonNull Error error) {
                PreloaderURLItem preloaderURLItem;
                CodecStrategyAdapter codecStrategyAdapter;
                DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItemRef.get();
                if (dataLoaderTaskItem == null || (preloaderURLItem = dataLoaderTaskItem.mURLItem) == null || (codecStrategyAdapter = preloaderURLItem.mAdapter) == null) {
                    return;
                }
                dataLoaderTaskItem.mResponseError = error;
                codecStrategyAdapter.fallbackToDirectUrl();
                TaskListener taskListener = dataLoaderTaskItem.mListener;
                if (taskListener != null) {
                    taskListener.taskFinished(dataLoaderTaskItem);
                }
            }
        }

        /* loaded from: classes6.dex */
        public class TrackItem {
            public String mTaskKey = null;
            public String mProxyUrl = null;
            public Resolution mUsingResolution = Resolution.Undefine;
            public String mDecryptionKey = null;
            public VideoInfo mVideoInfo = null;
            public String[] mUrls = null;
            public String[] mUrlExpireTimes = null;
            public String mExternalInfo = null;
            public long mPreloadHeaderSize = 0;
            public long mPreloadOffset = 0;
            public long mPreSize = 0;
            public long mMediaSize = 0;
            public long mCacheSize = 0;
            public String mLocalFilePath = null;
            public String mCustomHeader = null;
            public long mPreloadFooterSize = 0;
            public boolean mIsFooterPreloaded = false;

            public TrackItem() {
            }
        }

        public void _notifyError(int i10) {
            if (getCallBackListener() != null) {
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i10);
                getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
            }
        }

        public TrackItem addTrackItemByKey(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            TrackItem trackItem = getTrackItem(str);
            if (trackItem == null) {
                TrackItem trackItem2 = new TrackItem();
                trackItem2.mTaskKey = str;
                this.mTracks.add(trackItem2);
                return trackItem2;
            }
            return trackItem;
        }

        public IPreLoaderItemCallBackListener getCallBackListener() {
            PreloaderURLItem preloaderURLItem = this.mURLItem;
            if (preloaderURLItem != null && preloaderURLItem.getCallBackListener() != null) {
                return this.mURLItem.getCallBackListener();
            }
            PreloaderVidItem preloaderVidItem = this.mVidItem;
            if (preloaderVidItem != null) {
                return preloaderVidItem.getCallBackListener();
            }
            PreloaderVideoModelItem preloaderVideoModelItem = this.mVideoModelItem;
            if (preloaderVideoModelItem != null) {
                return preloaderVideoModelItem.getCallBackListener();
            }
            PreloadMedia preloadMedia = this.mPreloadMedia;
            if (preloadMedia != null) {
                return preloadMedia.getCallBackListener();
            }
            return null;
        }

        public TrackItem getTrackItem(String str) {
            if (this.mTracks.size() > 0) {
                for (int i10 = 0; i10 < this.mTracks.size(); i10++) {
                    TrackItem trackItem = this.mTracks.get(i10);
                    if (trackItem.mTaskKey.equals(str)) {
                        return trackItem;
                    }
                }
            }
            return null;
        }

        public void removeVidPlaceholderTrack() {
            if (this.mVidItem != null && this.mTracks.size() == 1) {
                this.mTracks.remove(0);
            }
        }

        public void setFetchListener() {
            VideoInfoFetcher videoInfoFetcher = this.mFetcher;
            if (videoInfoFetcher != null) {
                videoInfoFetcher.setListener(new MyFetcherListener(this));
            }
        }

        public void setListener(TaskListener taskListener) {
            this.mListener = taskListener;
        }

        public void setUp(String str, Resolution resolution, long j10) {
            if (this.mTracks.size() == 0) {
                TrackItem trackItem = new TrackItem();
                trackItem.mTaskKey = str;
                trackItem.mUsingResolution = resolution;
                trackItem.mPreSize = j10;
                this.mTracks.add(trackItem);
            } else {
                TTVideoEngineLog.e(DataLoaderHelper.TAG, "[preload] DataLoaderTaskItem setup fail");
            }
            this.mSetResolution = resolution;
            this.mPreloadSize = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public class MyFetcherListener implements VideoInfoFetcher.FetcherListener {
            private final WeakReference<DataLoaderTaskItem> mTaskItemRef;

            public MyFetcherListener(DataLoaderTaskItem dataLoaderTaskItem) {
                this.mTaskItemRef = new WeakReference<>(dataLoaderTaskItem);
            }

            @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
            public void onCompletion(VideoModel videoModel, Error error) {
                DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItemRef.get();
                if (dataLoaderTaskItem == null) {
                    return;
                }
                dataLoaderTaskItem.mResponseData = videoModel;
                dataLoaderTaskItem.mResponseError = error;
                TaskListener taskListener = dataLoaderTaskItem.mListener;
                if (taskListener != null) {
                    taskListener.taskFinished(dataLoaderTaskItem);
                }
            }

            @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
            public void onStatusException(int i10, String str) {
                DataLoaderTaskItem dataLoaderTaskItem = this.mTaskItemRef.get();
                if (dataLoaderTaskItem == null) {
                    return;
                }
                if (i10 != 0 && i10 != 10) {
                    dataLoaderTaskItem.mResponseError = new Error(Error.FetchingInfo, Error.VideoInfoStatusInvalid);
                }
                TaskListener taskListener = dataLoaderTaskItem.mListener;
                if (taskListener != null) {
                    taskListener.taskFinished(dataLoaderTaskItem);
                }
            }

            @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
            public void onLog(String str) {
            }

            @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
            public void onRetry(Error error) {
            }
        }
    }

    public void addTask(String str, String str2, VideoModel videoModel, Resolution resolution, long j10) {
        addTask(new PreloaderVideoModelItem(videoModel, resolution, j10, (PreloaderFilePathListener) null));
    }

    public void addPreloadUrlMedia(PreloadURLMedia preloadURLMedia) {
    }

    @Deprecated
    public void p2pPredown(String str) {
    }

    public void setNetworkClient(TTVNetClient tTVNetClient) {
    }

    public void setPlayTaskProgress(float f10) {
    }

    public void setProbeIntervalMS(int i10) {
    }

    public void setProbeType(int i10) {
    }

    public void setTaskConfigs(List<PreloadTaskConfig> list) {
    }

    public void addTask(VideoModel videoModel, Resolution resolution, long j10) {
        addTask(videoModel, resolution, (Map<Integer, String>) null, j10);
    }

    public void addTask(VideoModel videoModel, Resolution resolution, Map<Integer, String> map, long j10) {
        PreloaderVideoModelItem preloaderVideoModelItem = new PreloaderVideoModelItem(videoModel, resolution, j10, (PreloaderFilePathListener) null);
        preloaderVideoModelItem.mParams = map;
        addTask(preloaderVideoModelItem);
    }

    public void addTask(IVideoModel iVideoModel, Resolution resolution, long j10) {
        addTask(iVideoModel, resolution, (Map<Integer, String>) null, j10);
    }

    public void addTask(IVideoModel iVideoModel, Resolution resolution, Map<Integer, String> map, long j10) {
        PreloaderVideoModelItem preloaderVideoModelItem = new PreloaderVideoModelItem(iVideoModel, resolution, j10, (PreloaderFilePathListener) null);
        preloaderVideoModelItem.mParams = map;
        addTask(preloaderVideoModelItem);
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x01ee A[EDGE_INSN: B:128:0x01ee->B:91:0x01ee ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01a7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTask(com.ss.ttvideoengine.PreloaderVideoModelItem r17) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.DataLoaderHelper.addTask(com.ss.ttvideoengine.PreloaderVideoModelItem):void");
    }

    public void removePreloadMedia(PreloadMedia preloadMedia, String str) {
    }

    public void addTask(String str, String str2, String str3, long j10) {
        if (TextUtils.isEmpty(str3)) {
            TTVideoEngineLog.e(TAG, "[preload] url invalid.");
        } else {
            addTask(new PreloaderURLItem(str, str2, j10, new String[]{str3}));
        }
    }

    public void addTask(String str, String str2, String[] strArr, long j10) {
        if (strArr != null && strArr.length != 0) {
            addTask(new PreloaderURLItem(str, str2, j10, strArr));
        } else {
            TTVideoEngineLog.e(TAG, "urls invalid.");
        }
    }

    public void addTask(String str, String str2, String[] strArr, long j10, String str3) {
        if (strArr != null && strArr.length != 0) {
            addTask(new PreloaderURLItem(str, str2, j10, strArr, str3));
        } else {
            TTVideoEngineLog.e(TAG, "urls invalid.");
        }
    }

    public void addTask(String str, String str2, long j10, String str3) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e(TAG, "url invalid.");
        } else {
            addTask(new String[]{str}, str2, j10, str3);
        }
    }

    public void addTask(String[] strArr, String str, long j10, String str2) {
        if (strArr != null && strArr.length != 0) {
            this.mLock.lock(ABLock.TYPE_READ);
            try {
                String keyFromFilePath = TTHelper.keyFromFilePath(this.mContext, str2);
                PreloaderURLItem preloaderURLItem = new PreloaderURLItem(str, j10, strArr, str2);
                preloaderURLItem.setKey(keyFromFilePath);
                addTask(preloaderURLItem);
                return;
            } finally {
                this.mLock.unlock(ABLock.TYPE_READ);
            }
        }
        TTVideoEngineLog.e(TAG, "urls invalid.");
    }

    public void addTask(String str, String str2, long j10, DataLoaderResourceProvider dataLoaderResourceProvider, String str3) {
        if (dataLoaderResourceProvider == null) {
            TTVideoEngineLog.e(TAG, "provider invalid.");
        } else {
            addTask(new PreloaderURLItem(str, str2, j10, dataLoaderResourceProvider, str3));
        }
    }
}
