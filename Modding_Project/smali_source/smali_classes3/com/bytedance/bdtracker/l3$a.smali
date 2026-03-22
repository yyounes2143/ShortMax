.class public final Lcom/bytedance/bdtracker/l3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/profile/UserProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/l3;->a(Lcom/bytedance/bdtracker/e0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lcom/bytedance/applog/profile/UserProfileCallback;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/bdtracker/l3$a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/l3$a;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/bdtracker/l3$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/l3$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/l3;->c:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/bdtracker/l3$a;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/bdtracker/l3$a;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    sget-object v0, Lcom/bytedance/bdtracker/l3;->d:[J

    .line 18
    .line 19
    iget v1, p0, Lcom/bytedance/bdtracker/l3$a;->a:I

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    aput-wide v2, v0, v1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/bdtracker/l3$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
