.class public final Lcom/jiuzhou/cdn/model/request/CdnEvent;
.super Ljava/lang/Object;
.source "CdnEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private app_version:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private batch_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private block_type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private brand:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cdn_domain:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private check_time:J

.field private collect_sdk_version:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private country_code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private device_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private err_code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private event_count:I

.field private event_duration:J

.field private event_time:J

.field private event_type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private http_status_code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private local_time:J

.field private model:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private network_type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private os:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private os_version:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private play_sdk_version:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private req_header:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private res_header:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resource:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private video_duration:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_time:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->local_time:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->check_time:J

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput v2, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_count:I

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_duration:J

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->video_duration:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getApp_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->app_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBatch_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->batch_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBlock_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->block_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->brand:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCdn_domain()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->cdn_domain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCheck_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->check_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCollect_sdk_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->collect_sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountry_code()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->country_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDevice_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErr_code()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->err_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEvent_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_count:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEvent_duration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEvent_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEvent_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttp_status_code()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->http_status_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocal_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->local_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetwork_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->network_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->os:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOs_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->os_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlay_sdk_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->play_sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemark()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->remark:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReq_header()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->req_header:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRes_header()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->res_header:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->resolution:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->resource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo_duration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->video_duration:I

    .line 2
    .line 3
    return v0
.end method

.method public final setApp_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->app_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBatch_id(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->batch_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBlock_type(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->block_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->brand:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCdn_domain(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->cdn_domain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCheck_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->check_time:J

    .line 2
    .line 3
    return-void
.end method

.method public final setCollect_sdk_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->collect_sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCountry_code(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->country_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDevice_id(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErr_code(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->err_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEvent_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_count:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEvent_duration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_duration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setEvent_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_time:J

    .line 2
    .line 3
    return-void
.end method

.method public final setEvent_type(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->event_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHttp_status_code(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->http_status_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocal_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->local_time:J

    .line 2
    .line 3
    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->model:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetwork_type(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->network_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOs(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->os:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOs_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->os_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlay_sdk_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->play_sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->remark:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReq_header(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->req_header:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRes_header(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->res_header:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->resolution:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->resource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideo_duration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jiuzhou/cdn/model/request/CdnEvent;->video_duration:I

    .line 2
    .line 3
    return-void
.end method
