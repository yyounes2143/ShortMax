.class public Lcom/bytertc/volcbaselog/VolcBaseLogConfig;
.super Ljava/lang/Object;
.source "VolcBaseLogConfig.java"


# instance fields
.field public enableLogFile:Z

.field public enableStdout:Z

.field public enableThreadLoop:Z

.field public interval:J

.field public logExpireTime:I

.field public logLevel:I

.field public logPath:Ljava/lang/String;

.field public maxLogSize:I

.field public query_url:Ljava/lang/String;

.field public singleLogSize:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logPath:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    iput v1, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->maxLogSize:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->singleLogSize:I

    .line 14
    .line 15
    const v2, 0x93a80

    .line 16
    .line 17
    .line 18
    iput v2, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logExpireTime:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableThreadLoop:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableStdout:Z

    .line 25
    .line 26
    iput v1, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logLevel:I

    .line 27
    .line 28
    const-wide/32 v3, 0x1d4c0

    .line 29
    .line 30
    .line 31
    iput-wide v3, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->interval:J

    .line 32
    .line 33
    iput-object v0, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->query_url:Ljava/lang/String;

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableLogFile:Z

    .line 36
    .line 37
    return-void
.end method
