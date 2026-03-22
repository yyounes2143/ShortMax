.class public final Lsf/b$a;
.super Ljava/lang/Object;
.source "IPushTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lsf/b$a;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsf/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lsf/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsf/b$a;->a:Lsf/b$a;

    .line 7
    .line 8
    const-wide/32 v0, 0x36ee80

    .line 9
    .line 10
    .line 11
    sput-wide v0, Lsf/b$a;->b:J

    .line 12
    .line 13
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
    sget-wide v0, Lsf/b$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
