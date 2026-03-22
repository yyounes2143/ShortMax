.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->b(Landroid/app/Activity;Landroid/view/View;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

.field final synthetic b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getEnteredUserName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->o(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getEnteredPassword()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->i(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->B()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
