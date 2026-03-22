.class public interface abstract Lcom/huawei/hms/support/account/service/AccountAuthService;
.super Ljava/lang/Object;
.source "AccountAuthService.java"

# interfaces
.implements Lcom/huawei/hms/support/feature/service/AuthService;


# virtual methods
.method public abstract getAssistToken(Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;)Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;",
            ")",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AssistTokenResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannel()Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AccountIcon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIndependentSignInIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract logout()Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract silentSignIn()Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AuthAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startAssistLogin(Ljava/lang/String;)Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
