.class public final Lo1/a;
.super Ljava/lang/Object;
.source "BRV.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lo1/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:I

.field private static c:J

.field private static d:J

.field private static e:Z

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo1/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo1/a;->a:Lo1/a;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Lo1/a;->b:I

    .line 10
    .line 11
    const-wide/16 v0, 0x1f4

    .line 12
    .line 13
    sput-wide v0, Lo1/a;->c:J

    .line 14
    .line 15
    sput-wide v0, Lo1/a;->d:J

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    sget-wide v0, Lo1/a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lo1/a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()J
    .locals 2

    .line 1
    sget-wide v0, Lo1/a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 1
    sget v0, Lo1/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(J)V
    .locals 0

    .line 1
    sput-wide p1, Lo1/a;->f:J

    .line 2
    .line 3
    return-void
.end method
