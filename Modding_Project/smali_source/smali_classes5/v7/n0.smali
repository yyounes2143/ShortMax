.class public final Lv7/n0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# static fields
.field private static final c:Lv7/n0;


# instance fields
.field private final a:Lv7/v;

.field private final b:Lv7/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv7/n0;

    .line 2
    .line 3
    invoke-direct {v0}, Lv7/n0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv7/n0;->c:Lv7/n0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lv7/v;->i()Lv7/v;

    move-result-object v0

    invoke-static {}, Lv7/q;->a()Lv7/q;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lv7/n0;-><init>(Lv7/v;Lv7/q;)V

    return-void
.end method

.method private constructor <init>(Lv7/v;Lv7/q;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv7/n0;->a:Lv7/v;

    .line 4
    iput-object p2, p0, Lv7/n0;->b:Lv7/q;

    return-void
.end method

.method public static d()Lv7/n0;
    .locals 1

    .line 1
    sget-object v0, Lv7/n0;->c:Lv7/n0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/n0;->a:Lv7/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv7/v;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/n0;->a:Lv7/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv7/v;->g(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv7/n0;->a:Lv7/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv7/v;->h()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
