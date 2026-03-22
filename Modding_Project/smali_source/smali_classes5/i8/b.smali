.class public Li8/b;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"


# static fields
.field private static final c:Lf8/j;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:La5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/g<",
            "Le8/f0;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Li8/e;

.field private final b:La5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/g<",
            "Le8/f0;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf8/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lf8/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li8/b;->c:Lf8/j;

    .line 7
    .line 8
    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    .line 9
    .line 10
    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 11
    .line 12
    invoke-static {v0, v1}, Li8/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Li8/b;->d:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    .line 19
    .line 20
    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 21
    .line 22
    invoke-static {v0, v1}, Li8/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Li8/b;->e:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Li8/a;

    .line 29
    .line 30
    invoke-direct {v0}, Li8/a;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Li8/b;->f:La5/g;

    .line 34
    .line 35
    return-void
.end method

.method constructor <init>(Li8/e;La5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li8/e;",
            "La5/g<",
            "Le8/f0;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/b;->a:Li8/e;

    .line 5
    .line 6
    iput-object p2, p0, Li8/b;->b:La5/g;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Le8/f0;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Li8/b;->d(Le8/f0;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lj8/b;Lcom/google/firebase/crashlytics/internal/common/n0;)Li8/b;
    .locals 4

    .line 1
    invoke-static {p0}, Lc5/u;->f(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lc5/u;->c()Lc5/u;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/google/android/datatransport/cct/a;

    .line 9
    .line 10
    sget-object v1, Li8/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Li8/b;->e:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lc5/u;->g(Lc5/f;)La5/i;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "json"

    .line 22
    .line 23
    invoke-static {v0}, La5/c;->b(Ljava/lang/String;)La5/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Li8/b;->f:La5/g;

    .line 28
    .line 29
    const-string v2, "FIREBASE_CRASHLYTICS_REPORT"

    .line 30
    .line 31
    const-class v3, Le8/f0;

    .line 32
    .line 33
    invoke-interface {p0, v2, v3, v0, v1}, La5/i;->a(Ljava/lang/String;Ljava/lang/Class;La5/c;La5/g;)La5/h;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Li8/e;

    .line 38
    .line 39
    invoke-interface {p1}, Lj8/b;->a()Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p0, p1, p2}, Li8/e;-><init>(La5/h;Lcom/google/firebase/crashlytics/internal/settings/c;Lcom/google/firebase/crashlytics/internal/common/n0;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Li8/b;

    .line 47
    .line 48
    invoke-direct {p0, v0, v1}, Li8/b;-><init>(Li8/e;La5/g;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method private static synthetic d(Le8/f0;)[B
    .locals 1

    .line 1
    sget-object v0, Li8/b;->c:Lf8/j;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lf8/j;->M(Le8/f0;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "UTF-8"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-ltz v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_2

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-le v2, v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Invalid input received"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method


# virtual methods
.method public c(Lcom/google/firebase/crashlytics/internal/common/b0;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/internal/common/b0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/common/b0;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/common/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li8/b;->a:Li8/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Li8/e;->i(Lcom/google/firebase/crashlytics/internal/common/b0;Z)Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
