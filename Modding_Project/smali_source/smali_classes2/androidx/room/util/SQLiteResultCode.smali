.class public final Landroidx/room/util/SQLiteResultCode;
.super Ljava/lang/Object;
.source "SQLiteUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/room/util/SQLiteResultCode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SQLITE_BUSY:I = 0x5

.field public static final SQLITE_ERROR:I = 0x1

.field public static final SQLITE_MISUSE:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/util/SQLiteResultCode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/room/util/SQLiteResultCode;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/room/util/SQLiteResultCode;->INSTANCE:Landroidx/room/util/SQLiteResultCode;

    .line 7
    .line 8
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
