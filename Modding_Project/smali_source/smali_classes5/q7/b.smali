.class public final Lq7/b;
.super Lp7/d;
.source "DefaultAppCheckTokenResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/FirebaseException;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/FirebaseException;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/FirebaseException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp7/d;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq7/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lq7/b;->b:Lcom/google/firebase/FirebaseException;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lp7/c;)Lq7/b;
    .locals 2
    .param p0    # Lp7/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq7/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lp7/c;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lq7/b;-><init>(Ljava/lang/String;Lcom/google/firebase/FirebaseException;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static d(Lcom/google/firebase/FirebaseException;)Lq7/b;
    .locals 2
    .param p0    # Lcom/google/firebase/FirebaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lq7/b;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/FirebaseException;

    .line 8
    .line 9
    const-string v1, "eyJlcnJvciI6IlVOS05PV05fRVJST1IifQ=="

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lq7/b;-><init>(Ljava/lang/String;Lcom/google/firebase/FirebaseException;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Exception;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq7/b;->b:Lcom/google/firebase/FirebaseException;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lq7/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
