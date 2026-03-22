.class final Lcom/facebook/login/LoginManager$c;
.super Ljava/lang/Object;
.source "LoginManager.kt"

# interfaces
.implements Lcom/facebook/login/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/internal/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/internal/x;)V
    .locals 1
    .param p1    # Lcom/facebook/internal/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/login/LoginManager$c;->a:Lcom/facebook/internal/x;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/internal/x;->a()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/facebook/login/LoginManager$c;->b:Landroid/app/Activity;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager$c;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/login/LoginManager$c;->a:Lcom/facebook/internal/x;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/x;->d(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
