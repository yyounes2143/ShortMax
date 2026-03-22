.class public final Lcom/moloco/sdk/internal/publisher/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/publisher/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/w$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/moloco/sdk/internal/publisher/w$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final a:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/w$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/w$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/w;->d:Lcom/moloco/sdk/internal/publisher/w$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/w;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/publisher/AdFormatType;J)V
    .locals 1

    const-string v0, "adFormatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/w;->a:Lcom/moloco/sdk/publisher/AdFormatType;

    iput-wide p2, p0, Lcom/moloco/sdk/internal/publisher/w;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/publisher/AdFormatType;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/publisher/w;-><init>(Lcom/moloco/sdk/publisher/AdFormatType;J)V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/w;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long v0, p1, v0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/moloco/sdk/internal/publisher/w;->b:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/time/b;->q(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v2, v0

    .line 14
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 15
    .line 16
    invoke-static {v2, v3, v4}, Lkotlin/time/c;->t(JLkotlin/time/DurationUnit;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lcom/moloco/sdk/internal/publisher/w;->a:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v6, " timeout: "

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v6, p0, Lcom/moloco/sdk/internal/publisher/w;->b:J

    .line 38
    .line 39
    invoke-static {v6, v7}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v6, " , create ad duration: "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " ms (createTime: "

    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/w;->b()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " ms, loadStartTime: "

    .line 67
    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, " ms). Return value: "

    .line 75
    .line 76
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const/4 v8, 0x4

    .line 91
    const/4 v9, 0x0

    .line 92
    const-string v5, "AdCreateLoadTimeoutManager"

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-static/range {v4 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-wide v2
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/internal/publisher/w;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setCreateAdObjectStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/moloco/sdk/internal/publisher/w;->c:J

    .line 2
    .line 3
    return-void
.end method
