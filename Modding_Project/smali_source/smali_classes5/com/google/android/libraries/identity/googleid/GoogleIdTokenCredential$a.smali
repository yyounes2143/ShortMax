.class public final Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
.super Ljava/lang/Object;
.source "com.google.android.libraries.identity.googleid:googleid@@1.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->b:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->f:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->g:Ljava/lang/String;

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "idToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Landroid/net/Uri;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$a;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method
