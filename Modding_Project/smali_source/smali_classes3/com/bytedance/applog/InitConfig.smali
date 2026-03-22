.class public Lcom/bytedance/applog/InitConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public C:Landroid/accounts/Account;

.field public D:Z

.field public E:Lcom/bytedance/applog/network/INetworkClient;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Lcom/bytedance/applog/ISensitiveInfoProvider;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Z

.field public Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

.field public final a:Ljava/lang/String;

.field public a0:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Z

.field public b0:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public c0:Z

.field public d:Ljava/lang/String;

.field public d0:Z

.field public e:Lcom/bytedance/bdtracker/z;

.field public e0:Z

.field public f:Ljava/lang/String;

.field public f0:Z

.field public g:Ljava/lang/String;

.field public g0:Z

.field public h:Lcom/bytedance/applog/ILogger;

.field public h0:Z

.field public i:Ljava/lang/String;

.field public i0:Z

.field public j:Ljava/lang/String;

.field public j0:Z

.field public k:Lcom/bytedance/applog/IPicker;

.field public k0:Z

.field public l:Z

.field public l0:Z

.field public m:Z

.field public m0:Z

.field public n:Z

.field public n0:I

.field public o:I

.field public o0:Z

.field public p:Ljava/lang/String;

.field public p0:Z

.field public q:Z

.field public q0:I

.field public r:Ljava/lang/String;

.field public r0:I

.field public s:Lcom/bytedance/applog/UriConfig;

.field public s0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public t0:Z

.field public u:Ljava/lang/String;

.field public u0:Z

.field public v:I

.field public v0:Z

.field public w:I

.field public w0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    .line 9
    .line 10
    iput v1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    .line 66
    .line 67
    const/4 v3, 0x6

    .line 68
    iput v3, p0, Lcom/bytedance/applog/InitConfig;->n0:I

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->o0:Z

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    .line 73
    .line 74
    const/16 v3, 0x7d0

    .line 75
    .line 76
    iput v3, p0, Lcom/bytedance/applog/InitConfig;->q0:I

    .line 77
    .line 78
    iput v1, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    .line 79
    .line 80
    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->s0:Ljava/util/Map;

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->t0:Z

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->u0:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    .line 87
    .line 88
    new-instance v0, Ljava/util/HashSet;

    .line 89
    .line 90
    const/4 v1, 0x4

    .line 91
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->w0:Ljava/util/Set;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public addLoaderFilter(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->w0:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public autoStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public clearABCacheOnUserChange(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public clearDidAndIid(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public disableDeferredALink()Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public enableDeferredALink()Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAppImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->X:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAutoTrackEventType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->n0:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClearKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommonHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "@"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "bd_tea_agent.db"

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

    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method public getEncryptor()Lcom/bytedance/mpaas/IEncryptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lcom/bytedance/bdtracker/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGaidTimeOutMilliSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->q0:I

    .line 2
    .line 3
    return v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH5BridgeAllowlist()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->T:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->s0:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoaderFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->w0:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLogger()Lcom/bytedance/applog/ILogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManifestVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNotReuqestSender()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPicker()Lcom/bytedance/applog/IPicker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreInstallCallback()Lcom/bytedance/bdtracker/m5;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getProcess()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->N:Lcom/bytedance/applog/ISensitiveInfoProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->M:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackCrashType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    .line 2
    .line 3
    return v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getUriConfig()Lcom/bytedance/applog/UriConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserUniqueId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserUniqueIdType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAbEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAndroidIdEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoTrackFragmentEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isClearABCacheOnUserChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    .line 2
    .line 3
    return v0
.end method

.method public isClearDidAndIid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCongestionControlEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDeferredALinkEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEventFilterEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Y:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExposureEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGaidEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5BridgeAllowAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHandleLifeCycle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHarmonyEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIccIdEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->t0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isImeiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMacEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMetaSecEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMigrateEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->o0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMonitorEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOaidEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOperatorInfoEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPageMetaAnnotationEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlayEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReportOaidEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScreenOrientationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSerialNumberEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->u0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSilenceInBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTrackEventEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    .line 2
    .line 3
    return v0
.end method

.method public putCommonHeader(Ljava/util/Map;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/applog/InitConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAbEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAndroidIdEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAnonymous(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->X:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAutoActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoStart(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAutoTrackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoTrackEventType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->n0:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoTrackFragmentEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCongestionControlEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDbName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncryptor(Lcom/bytedance/mpaas/IEncryptor;)Lcom/bytedance/applog/InitConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/z;

    const-string v1, "a"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/bdtracker/z;-><init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lcom/bytedance/bdtracker/z;

    return-object p0
.end method

.method public setEncryptor(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/bdtracker/z;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/bdtracker/z;-><init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lcom/bytedance/bdtracker/z;

    return-object p0
.end method

.method public setEventFilterEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->Y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExposureEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGaidEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGaidTimeOutMilliSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->q0:I

    .line 2
    .line 3
    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setH5BridgeAllowAll(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setH5BridgeAllowlist(Ljava/util/List;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/applog/InitConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->T:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setH5BridgeEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setH5CollectEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setHandleLifeCycle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHarmonyEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s0:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setIccIdEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->t0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImeiEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIpcDataChecker(Lcom/bytedance/applog/InitConfig$IpcDataChecker;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalTest(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMacEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMainProcess()Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    .line 3
    .line 4
    return-object p0
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMetaSecEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMigrateEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->o0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMonitorEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/j2;->b(Lcom/bytedance/applog/InitConfig;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    .line 5
    .line 6
    return-void
.end method

.method public setNetworkClient(Lcom/bytedance/applog/network/INetworkClient;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNotRequestSender(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setOaidEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOperatorInfoEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPageMetaAnnotationEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPicker(Lcom/bytedance/applog/IPicker;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreInstallChannelCallback(Lcom/bytedance/bdtracker/m5;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    return-object p0
.end method

.method public setProcess(I)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReportOaidEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScreenOrientationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSensitiveInfoProvider(Lcom/bytedance/applog/ISensitiveInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->N:Lcom/bytedance/applog/ISensitiveInfoProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setSerialNumberEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->u0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSilenceInBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->M:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setTrackCrashType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrackEventEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->w:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/UriConfig;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setUserUniqueId(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserUniqueIdType(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
