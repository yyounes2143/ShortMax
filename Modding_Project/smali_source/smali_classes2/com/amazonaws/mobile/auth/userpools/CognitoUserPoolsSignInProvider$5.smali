.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$5;
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
.field final synthetic a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$5;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$5;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->SIGN_UP_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 8
    .line 9
    iget v0, v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->b(Landroid/app/Activity;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
