.class public final Lcom/facebook/login/widget/LoginButton$e;
.super Lcom/facebook/g;
.source "LoginButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic f:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$e;->f:Lcom/facebook/login/widget/LoginButton;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected d(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$e;->f:Lcom/facebook/login/widget/LoginButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/login/widget/LoginButton;->E()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$e;->f:Lcom/facebook/login/widget/LoginButton;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/login/widget/LoginButton;->C()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
