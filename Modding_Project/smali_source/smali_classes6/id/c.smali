.class public final Lid/c;
.super Ljava/lang/Object;
.source "SOss.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lid/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lid/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lid/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lid/c;->a:Lid/c;

    .line 7
    .line 8
    const/high16 v0, 0x42f00000    # 120.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lid/c;->b:I

    .line 15
    .line 16
    const/high16 v0, 0x43200000    # 160.0f

    .line 17
    .line 18
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lid/c;->c:I

    .line 23
    .line 24
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
.method public final a()I
    .locals 1

    .line 1
    sget v0, Lid/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    sget v0, Lid/c;->b:I

    .line 2
    .line 3
    return v0
.end method
