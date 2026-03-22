.class final Lcom/google/firebase/installations/local/a$b;
.super Lcom/google/firebase/installations/local/b$a;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/local/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/local/b$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/installations/local/b;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/local/b$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/a$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->g()Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/a$b;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/a$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/a$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/installations/local/a$b;->e:J

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/installations/local/a$b;->f:J

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->g:Ljava/lang/String;

    const/4 p1, 0x3

    .line 11
    iput-byte p1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/installations/local/b;Lcom/google/firebase/installations/local/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/local/a$b;-><init>(Lcom/google/firebase/installations/local/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/local/b;
    .locals 12

    .line 1
    iget-byte v0, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/installations/local/a$b;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/google/firebase/installations/local/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/firebase/installations/local/a$b;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/firebase/installations/local/a$b;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/firebase/installations/local/a$b;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/google/firebase/installations/local/a$b;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/google/firebase/installations/local/a$b;->e:J

    .line 22
    .line 23
    iget-wide v8, p0, Lcom/google/firebase/installations/local/a$b;->f:J

    .line 24
    .line 25
    iget-object v10, p0, Lcom/google/firebase/installations/local/a$b;->g:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v11, 0x0

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v11}, Lcom/google/firebase/installations/local/a;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/google/firebase/installations/local/a$a;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/firebase/installations/local/a$b;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, " registrationStatus"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-byte v1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 48
    .line 49
    and-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    const-string v1, " expiresInSecs"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-byte v1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 59
    .line 60
    and-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    const-string v1, " tokenCreationEpochInSecs"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "Missing required properties:"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/installations/local/b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(J)Lcom/google/firebase/installations/local/b$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/installations/local/a$b;->e:J

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 9
    .line 10
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/local/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/installations/local/b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/installations/local/b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)Lcom/google/firebase/installations/local/b$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/installations/local/a$b;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null registrationStatus"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public h(J)Lcom/google/firebase/installations/local/b$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/installations/local/a$b;->f:J

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/firebase/installations/local/a$b;->h:B

    .line 9
    .line 10
    return-object p0
.end method
