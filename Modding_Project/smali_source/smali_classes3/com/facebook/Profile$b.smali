.class public final Lcom/facebook/Profile$b;
.super Ljava/lang/Object;
.source "Profile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/Profile$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/facebook/Profile$b;->c(Lcom/facebook/Profile;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/facebook/Profile$b$a;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/facebook/Profile$b$a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/facebook/internal/u0;->H(Ljava/lang/String;Lcom/facebook/internal/u0$a;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b()Lcom/facebook/Profile;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/e0;->d:Lcom/facebook/e0$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/e0$a;->a()Lcom/facebook/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/e0;->c()Lcom/facebook/Profile;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final c(Lcom/facebook/Profile;)V
    .locals 1
    .param p1    # Lcom/facebook/Profile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/facebook/e0;->d:Lcom/facebook/e0$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/e0$a;->a()Lcom/facebook/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/e0;->f(Lcom/facebook/Profile;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
