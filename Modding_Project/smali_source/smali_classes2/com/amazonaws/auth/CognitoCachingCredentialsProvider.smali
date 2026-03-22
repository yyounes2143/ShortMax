.class public Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.super Lcom/amazonaws/auth/CognitoCredentialsProvider;
.source "CognitoCachingCredentialsProvider.java"


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Lcom/amazonaws/logging/Log;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field volatile o:Z

.field p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private q:Ljava/lang/String;

.field private final r:Lcom/amazonaws/auth/IdentityChangedListener;

.field private s:Z

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->u:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 38
    .line 39
    const-string v0, "com.amazonaws.android.auth"

    .line 40
    .line 41
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "identityId"

    .line 44
    .line 45
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->x:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "accessKey"

    .line 48
    .line 49
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "secretKey"

    .line 52
    .line 53
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "sessionToken"

    .line 56
    .line 57
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A:Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "expirationDate"

    .line 60
    .line 61
    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B:Ljava/lang/String;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Z

    .line 6
    .line 7
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->r:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "context can\'t be null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private A(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s:Z

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->x()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->r:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n(Lcom/amazonaws/auth/IdentityChangedListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private B()V
    .locals 6

    .line 1
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    const-string v1, "Loading credentials from SharedPreferences"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 9
    .line 10
    sget-object v2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    new-instance v1, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 44
    .line 45
    sget-object v3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 56
    .line 57
    sget-object v4, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p0, v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 68
    .line 69
    sget-object v5, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {p0, v5}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 87
    .line 88
    invoke-direct {v0, v1, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    :goto_0
    const-string v1, "No valid credentials found in SharedPreferences"

    .line 95
    .line 96
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 100
    .line 101
    return-void

    .line 102
    :catch_0
    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 106
    .line 107
    return-void
.end method

.method private C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private D(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    const-string v1, "Saving credentials to SharedPreferences"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1}, Lcom/amazonaws/auth/AWSCredentials;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 26
    .line 27
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p1}, Lcom/amazonaws/auth/AWSCredentials;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 41
    .line 42
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 56
    .line 57
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private E(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    const-string v1, "Saving identity id to SharedPreferences"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->x:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method static synthetic v()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic w(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    const-string v2, "Identity id without namespace is detected. It will be saved under new namespace."

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 14
    .line 15
    sget-object v2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 26
    .line 27
    sget-object v3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    return v0

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 47
    .line 48
    const-string v1, "No valid credentials found in SharedPreferences"

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    return v0
.end method


# virtual methods
.method public F(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 14
    .line 15
    const-string v1, "Clearing credentials from SharedPreferences"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 21
    .line 22
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 32
    .line 33
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 43
    .line 44
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->A:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 54
    .line 55
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public d()Lcom/amazonaws/auth/AWSSessionCredentials;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->B()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    :try_start_1
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 45
    .line 46
    const-string v1, "Making a network call to fetch credentials."

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    invoke-direct {p0, v1, v2, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->D(Lcom/amazonaws/auth/AWSSessionCredentials;J)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_1
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v:Lcom/amazonaws/logging/Log;

    .line 71
    .line 72
    const-string v2, "Failure to get credentials"

    .line 73
    .line 74
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :goto_3
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->m()V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->E(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->E(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 38
    .line 39
    return-object v0
.end method

.method public bridge synthetic getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->t:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-direct {p0, v1, v2, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->D(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public s(Ljava/util/Map;)V
    .locals 1
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
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-super {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->s(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method
