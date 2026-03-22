.class public final Lad/l$a;
.super Ljava/lang/Object;
.source "BillingClientStateCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lad/l$a;

.field private static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lad/l$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lad/l$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lad/l$a;->a:Lad/l$a;

    .line 7
    .line 8
    const-string v0, "inapp"

    .line 9
    .line 10
    sput-object v0, Lad/l$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v0, "subs"

    .line 13
    .line 14
    .line 15
    sput-object v0, Lad/l$a;->c:Ljava/lang/String;

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
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lad/l$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lad/l$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
