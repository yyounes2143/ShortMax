.class public final Lzc/f$b$a;
.super Ljava/lang/Object;
.source "CommonPurchase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lzc/f$b$a;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzc/f$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzc/f$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzc/f$b$a;->a:Lzc/f$b$a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lzc/f$b$a;->b:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    sput v0, Lzc/f$b$a;->c:I

    .line 13
    .line 14
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
    sget v0, Lzc/f$b$a;->b:I

    .line 2
    .line 3
    return v0
.end method
