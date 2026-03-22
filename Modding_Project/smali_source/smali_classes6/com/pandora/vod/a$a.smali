.class final Lcom/pandora/vod/a$a;
.super Ljava/lang/Object;
.source "VodALog.java"

# interfaces
.implements Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/vod/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public consoleLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/pandora/vod/a;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/bytertc/volcbaselog/VolcBaseLogNative;->writeLogContent(JILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
