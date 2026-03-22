.class public final Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

.field public static final APP_ACTIVE:Ljava/lang/String; = "app_active"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ATTEMPT_INSERT_NULL_DIAGNOSTIC_EVENT:Ljava/lang/String; = "attempt_insert_null_diagnostic_event"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final AWAITED_INIT:Ljava/lang/String; = "awaited_init"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BANNER_DESTROYED:Ljava/lang/String; = "native_banner_destroyed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BILLING_SERVICE_UNAVAILABLE:Ljava/lang/String; = "billing_service_unavailable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BRIDGE_SEND_EVENT_FAILED:Ljava/lang/String; = "bridge_send_event_failed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CACHE_SOURCE:Ljava/lang/String; = "cache_source"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMPLETE_STATE:Ljava/lang/String; = "complete_state"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COROUTINE_NAME:Ljava/lang/String; = "coroutine_name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GAME_ID:Ljava/lang/String; = "game_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HB_FAILURE:Ljava/lang/String; = "native_gateway_token_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HB_STARTED:Ljava/lang/String; = "native_gateway_token_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HB_SUCCESS:Ljava/lang/String; = "native_gateway_token_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_CLEAN_ASSETS:Ljava/lang/String; = "native_clean_assets_task_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_COMPLETED_FAILURE:Ljava/lang/String; = "native_initialization_completed_event_request_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_COMPLETED_STARTED:Ljava/lang/String; = "native_initialization_completed_event_request_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_COMPLETED_SUCCESS:Ljava/lang/String; = "native_initialization_completed_event_request_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_FAILURE:Ljava/lang/String; = "native_initialize_task_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_GAME_ID_CHANGED:Ljava/lang/String; = "native_initialize_game_id_changed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_GAME_ID_SAME:Ljava/lang/String; = "native_initialize_game_id_same"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_MISSED_NATIVE_PARSING:Ljava/lang/String; = "native_initialize_missed_native_parsing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_STARTED:Ljava/lang/String; = "native_initialization_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_SUCCESS:Ljava/lang/String; = "native_initialize_task_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_TEST_MODE_CHANGED:Ljava/lang/String; = "native_initialize_test_mode_changed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INIT_TEST_MODE_SAME:Ljava/lang/String; = "native_initialize_test_mode_same"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_RETRY:Ljava/lang/String; = "is_retry"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KOTLIN_VERSION:Ljava/lang/String; = "kotlin_version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CACHE_FAILURE:Ljava/lang/String; = "native_load_cache_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CACHE_SUCCESS:Ljava/lang/String; = "native_load_cache_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CONFIG_FAILURE_TIME:Ljava/lang/String; = "native_load_config_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CONFIG_SUCCESS_TIME:Ljava/lang/String; = "native_load_config_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CREATE_AD_OBJECT_FAILURE:Ljava/lang/String; = "native_create_ad_object_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_CREATE_AD_OBJECT_SUCCESS:Ljava/lang/String; = "native_create_ad_object_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_FAILURE:Ljava/lang/String; = "native_load_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_FILE_FAILURE_TIME:Ljava/lang/String; = "native_load_file_task_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_FILE_SUCCESS_TIME:Ljava/lang/String; = "native_load_file_task_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_STARTED:Ljava/lang/String; = "native_load_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_STARTED_AD_VIEWER:Ljava/lang/String; = "native_load_started_ad_viewer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_SUCCESS:Ljava/lang/String; = "native_load_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_WEBVIEW_FAILURE:Ljava/lang/String; = "native_webview_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_WEBVIEW_SUCCESS:Ljava/lang/String; = "native_webview_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_CLIENT:Ljava/lang/String; = "network_client"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_FAILURE:Ljava/lang/String; = "native_network_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_PARSE:Ljava/lang/String; = "native_network_parse_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_SUCCESS:Ljava/lang/String; = "native_network_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NULL_DIAGNOSTIC_EVENT:Ljava/lang/String; = "null_diagnostic_event"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OLD_CALLBACK_STATUS:Ljava/lang/String; = "old_callback_status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_ACTIVATE_FAILURE:Ljava/lang/String; = "om_activate_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_ACTIVATE_STARTED:Ljava/lang/String; = "om_activate_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_ACTIVATE_SUCCESS:Ljava/lang/String; = "om_activate_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_IMPRESSION_OCCURRED_FAILURE:Ljava/lang/String; = "om_impression_occurred_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_IMPRESSION_OCCURRED_SUCCESS:Ljava/lang/String; = "om_impression_occurred_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_SESSION_FINISH_FAILURE:Ljava/lang/String; = "om_session_finish_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_SESSION_FINISH_SUCCESS:Ljava/lang/String; = "om_session_finish_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_SESSION_START_FAILURE:Ljava/lang/String; = "om_session_start_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OM_SESSION_START_SUCCESS:Ljava/lang/String; = "om_session_start_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPERATION:Ljava/lang/String; = "operation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREVIOUS_GAME_ID:Ljava/lang/String; = "previous_game_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREVIOUS_TEST_MODE:Ljava/lang/String; = "previous_test_mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON:Ljava/lang/String; = "reason"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_AD_MARKUP_PARSE:Ljava/lang/String; = "invalid_admarkup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_AD_OBJECT_EXPIRED:Ljava/lang/String; = "ad_object_expired"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_AD_OBJECT_NOT_FOUND:Ljava/lang/String; = "ad_object_not_found"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_AD_PLAYER_SCOPE:Ljava/lang/String; = "ad_player_scope_not_active"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_AD_VIEWER:Ljava/lang/String; = "adviewer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_ALREADY_SHOWING:Ljava/lang/String; = "already_showing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_DEBUG:Ljava/lang/String; = "reason_debug"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_GATEWAY:Ljava/lang/String; = "gateway"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_INVALID_ENTRY_POINT:Ljava/lang/String; = "invalid_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_INVALID_GAME_ID:Ljava/lang/String; = "invalid_game_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_LISTENER_NULL:Ljava/lang/String; = "listener_null"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_NETWORK:Ljava/lang/String; = "network"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_NOT_INITIALIZED:Ljava/lang/String; = "not_initialized"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_NO_FILL:Ljava/lang/String; = "no_fill"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_NO_WEBVIEW_ENTRY_POINT:Ljava/lang/String; = "no_webview_entry_point"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_ALREADY_ACTIVE:Ljava/lang/String; = "om_already_active"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_CREATIVE_TYPE_INVALID:Ljava/lang/String; = "om_creative_type_invalid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_CREATIVE_TYPE_NULL:Ljava/lang/String; = "om_creative_type_null"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_NOT_ACTIVE:Ljava/lang/String; = "om_not_active"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_SESSION_ALREADY_EXISTS:Ljava/lang/String; = "om_session_already_exists"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OM_SESSION_NOT_FOUND:Ljava/lang/String; = "om_session_not_found"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OPPORTUNITY_ID:Ljava/lang/String; = "no_opportunity_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_OPPORTUNITY_USED:Ljava/lang/String; = "opportunity_id_used"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_PLACEMENT_NOT_LOADED:Ljava/lang/String; = "placement_not_loaded"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_PLACEMENT_NULL:Ljava/lang/String; = "placement_null"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_PLACEMENT_VALIDATION:Ljava/lang/String; = "placement_validation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_PROTOBUF_PARSING:Ljava/lang/String; = "protobuf_parsing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_TIMEOUT_INITIALIZATION:Ljava/lang/String; = "timeout_initialization"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_UNCAUGHT_EXCEPTION:Ljava/lang/String; = "uncaught_exception"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "unknown"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RETRIES:Ljava/lang/String; = "retries"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAME_SESSION:Ljava/lang/String; = "same_session"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_COLLECTION_FAILURE:Ljava/lang/String; = "native_scar_signals_collection_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_COLLECTION_STARTED:Ljava/lang/String; = "native_scar_signals_collection_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_COLLECTION_SUCCESS:Ljava/lang/String; = "native_scar_signals_collection_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_UPLOAD_FAILURE:Ljava/lang/String; = "native_scar_signals_upload_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_UPLOAD_STARTED:Ljava/lang/String; = "native_scar_signals_upload_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_UPLOAD_SUCCESS:Ljava/lang/String; = "native_scar_signals_upload_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_VIDEO_LENGTH_IN_SEC:Ljava/lang/String; = "native_scar_video_length_in_sec"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN:Ljava/lang/String; = "native_show_ad_viewer_fullscreen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_ACTIVITY_EVENT:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_activity_event"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_CREATION_FAILS:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_creation_fails"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_CREATION_STARTS:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_creation_starts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_CREATION_SUCCESS:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_creation_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_DESTROYED:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_destroyed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_FAILED_TO_ATTACH_WEBVIEW:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_failed_to_attach_webview"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_FINISHING_ON_DESTROY:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_finishing_on_destroy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_AD_VIEWER_FULLSCREEN_INTENT_FINISHING_ON_PAUSE:Ljava/lang/String; = "native_show_ad_viewer_fullscreen_intent_finishing_on_pause"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_CANCEL_TIMEOUT:Ljava/lang/String; = "native_show_cancel_timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_CLICKED:Ljava/lang/String; = "native_show_clicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_EVENT_FLOW_COLLECTED:Ljava/lang/String; = "native_show_event_flow_collected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_EVENT_FLOW_COMPLETED:Ljava/lang/String; = "native_show_event_flow_completed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_EVENT_FLOW_STARTED:Ljava/lang/String; = "native_show_event_flow_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_FAILURE:Ljava/lang/String; = "native_show_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_HAS_STARTED:Ljava/lang/String; = "show_has_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_IS_FILE_CACHED_FAILURE:Ljava/lang/String; = "native_show_is_file_cached_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_IS_FILE_CACHED_SUCCESS:Ljava/lang/String; = "native_show_is_file_cached_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_LEFT_APPLICATION:Ljava/lang/String; = "native_show_left_app"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_STARTED:Ljava/lang/String; = "native_show_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_STARTED_AD_VIEWER:Ljava/lang/String; = "native_show_started_ad_viewer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_SUCCESS:Ljava/lang/String; = "native_show_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_WV_STARTED:Ljava/lang/String; = "native_show_wv_started"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SIZE_KB:Ljava/lang/String; = "size_kb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE:Ljava/lang/String; = "source"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_GET_TOKEN_API:Ljava/lang/String; = "get_token"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_LOAD_API:Ljava/lang/String; = "load"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_PUBLIC_API:Ljava/lang/String; = "api"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATE:Ljava/lang/String; = "state"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYNC:Ljava/lang/String; = "sync"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_CRONET_ENGINE_ERROR:Ljava/lang/String; = "native_cronet_engine_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_CRONET_FAILURE:Ljava/lang/String; = "native_cronet_failure_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_CRONET_INSTALL_ERROR:Ljava/lang/String; = "native_cronet_install_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_CRONET_SUCCESS:Ljava/lang/String; = "native_cronet_success_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEST_MODE:Ljava/lang/String; = "test_mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL:Ljava/lang/String; = "url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_COULD_NOT_HANDLE_INTERCEPTED_URL:Ljava/lang/String; = "webview_could_not_handle_intercepted_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_ERROR:Ljava/lang/String; = "webview_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_ERROR_CODE:Ljava/lang/String; = "webview_error_code"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_INVOCATION:Ljava/lang/String; = "webview_invocation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_INVOCATION_ERROR:Ljava/lang/String; = "native_webview_invocation_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WEBVIEW_URL:Ljava/lang/String; = "webview_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
