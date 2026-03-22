.class public final Lid/d;
.super Ljava/lang/Object;
.source "SPermissions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lid/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lid/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lid/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lid/d;->a:Lid/d;

    .line 7
    .line 8
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lid/d;->b:[Ljava/lang/String;

    .line 15
    .line 16
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
.method public final a()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lid/d;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
