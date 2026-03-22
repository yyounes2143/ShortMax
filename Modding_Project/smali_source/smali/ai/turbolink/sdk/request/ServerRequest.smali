.class public abstract Lai/turbolink/sdk/request/ServerRequest;
.super Ljava/lang/Object;
.source "ServerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/request/ServerRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/request/ServerRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final POST_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final POST_PATH_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _lastRequestTime:I

.field private _params:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _requestPath:Lai/turbolink/sdk/request/ServerRequestPath;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _requestTimes:I

.field private callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/ServerRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/request/ServerRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/request/ServerRequest;->Companion:Lai/turbolink/sdk/request/ServerRequest$Companion;

    .line 8
    .line 9
    const-string v0, "REQUEST_POST"

    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/request/ServerRequest;->POST_KEY:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "REQUEST_POST_PATH"

    .line 14
    .line 15
    sput-object v0, Lai/turbolink/sdk/request/ServerRequest;->POST_PATH_KEY:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/turbolink/sdk/request/ServerRequestPath;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/request/ServerRequestPath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverRequestPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_context:Landroid/content/Context;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_params:Lorg/json/JSONObject;

    .line 4
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestPath:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 5
    sget-object p2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {p2, p1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getInstance(Landroid/content/Context;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    move-result-object p1

    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestTimes:I

    .line 7
    sget-object p1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    invoke-virtual {p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getCurrentTimestamp()J

    move-result-wide p1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_lastRequestTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/turbolink/sdk/request/ServerRequestPath;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/request/ServerRequestPath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverRequestPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "post"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequest;-><init>(Landroid/content/Context;Lai/turbolink/sdk/request/ServerRequestPath;)V

    .line 9
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerRequest;->_params:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected final getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequest;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastRequestTime()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_lastRequestTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLongUrl()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getTURBOLINK_BASE_URL_V2()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestPath:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 16
    .line 17
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final getPost()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_params:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getRequestData()Lai/turbolink/sdk/request/event/EventRequestData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getRequestPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestPath:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getRequestTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestTimes:I

    .line 2
    .line 3
    return v0
.end method

.method protected final get_appPrefHelper()Lai/turbolink/sdk/helpers/AppPrefHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract handleErrors(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract handleFailure(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V
    .param p1    # Lai/turbolink/sdk/request/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final isPersistable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final requestTimeIncrease()V
    .locals 4

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestTimes:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestTimes:I

    .line 6
    .line 7
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 8
    .line 9
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getCurrentTimestamp()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    div-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    iput v0, p0, Lai/turbolink/sdk/request/ServerRequest;->_lastRequestTime:I

    .line 19
    .line 20
    return-void
.end method

.method protected final setCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 0
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequest;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-void
.end method

.method protected setPost(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "post"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_params:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method

.method protected final set_appPrefHelper(Lai/turbolink/sdk/helpers/AppPrefHelper;)V
    .locals 0
    .param p1    # Lai/turbolink/sdk/helpers/AppPrefHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequest;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-void
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    sget-object v1, Lai/turbolink/sdk/request/ServerRequest;->POST_KEY:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequest;->_params:Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/request/ServerRequest;->POST_PATH_KEY:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequest;->_requestPath:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 16
    .line 17
    invoke-virtual {v2}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method
