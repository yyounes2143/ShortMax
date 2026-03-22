.class public final Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;
.super Ljava/lang/Object;
.source "ActConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final EMBEDDED_HEIGHT$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMBEDDED_PADDING$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FULLSCREEN_HEIGHT:I = -0x1

.field private static final HALF_SCREEN_HEIGHT$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NO_PADDING:I

.field public static final NO_RADIUS:I

.field private static final RADIUS$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->INSTANCE:Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;

    .line 7
    .line 8
    new-instance v0, Lrd/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lrd/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->HALF_SCREEN_HEIGHT$delegate:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lrd/b;

    .line 20
    .line 21
    invoke-direct {v0}, Lrd/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_HEIGHT$delegate:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lrd/c;

    .line 31
    .line 32
    invoke-direct {v0}, Lrd/c;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_PADDING$delegate:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lrd/d;

    .line 42
    .line 43
    invoke-direct {v0}, Lrd/d;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->RADIUS$delegate:Lms/i;

    .line 51
    .line 52
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

.method private static final EMBEDDED_HEIGHT_delegate$lambda$1()I
    .locals 1

    .line 1
    const/high16 v0, 0x43be0000    # 380.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final EMBEDDED_PADDING_delegate$lambda$2()I
    .locals 1

    .line 1
    const/high16 v0, 0x42000000    # 32.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final HALF_SCREEN_HEIGHT_delegate$lambda$0()I
    .locals 1

    .line 1
    const/high16 v0, 0x43f60000    # 492.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final RADIUS_delegate$lambda$3()I
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->HALF_SCREEN_HEIGHT_delegate$lambda$0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_PADDING_delegate$lambda$2()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_HEIGHT_delegate$lambda$1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic d()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->RADIUS_delegate$lambda$3()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method public final getEMBEDDED_HEIGHT()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_HEIGHT$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getEMBEDDED_PADDING()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->EMBEDDED_PADDING$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getHALF_SCREEN_HEIGHT()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->HALF_SCREEN_HEIGHT$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getRADIUS()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/act/H5ShowLayoutParam;->RADIUS$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
