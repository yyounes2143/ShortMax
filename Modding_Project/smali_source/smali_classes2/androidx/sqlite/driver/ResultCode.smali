.class public final Landroidx/sqlite/driver/ResultCode;
.super Ljava/lang/Object;
.source "AndroidSQLite.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/sqlite/driver/ResultCode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SQLITE_MISUSE:I = 0x15

.field public static final SQLITE_RANGE:I = 0x19


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/sqlite/driver/ResultCode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/sqlite/driver/ResultCode;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/sqlite/driver/ResultCode;->INSTANCE:Landroidx/sqlite/driver/ResultCode;

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
