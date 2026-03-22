.class public interface abstract Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;
.super Ljava/lang/Object;
.source "HuaweiIdAuthService.java"

# interfaces
.implements Lcom/huawei/hms/support/feature/service/AuthService;


# virtual methods
.method public abstract getSignInIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract silentSignIn()Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract silentSignIn(Ljava/lang/String;)Lua/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lua/f<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;"
        }
    .end annotation
.end method
