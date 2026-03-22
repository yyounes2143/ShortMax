.class public Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "SkuPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LABEL_SKU_TYPE_COIN:I = 0x2

.field public static final LABEL_SKU_TYPE_SUB:I = 0x1

.field public static final PAY_TYPE_APPLE_PAY:I = 0x2

.field public static final PAY_TYPE_GOOGLE_PAY:I = 0x1

.field public static final PAY_TYPE_HW:I = 0xc

.field public static final PAY_TYPE_OTHER:I = 0x63

.field public static final PAY_TYPE_PAYPAL:I = 0x4

.field public static final PAY_TYPE_STRIPE:I = 0x5

.field public static final PAY_TYPE_XM:I = 0xb


# instance fields
.field private final bonus:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final coins:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final countryCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currency:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currencyUnit:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final discountPercent:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private discountPeriodNum:I

.field private discountPriceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final firstAmount:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isFirstBuy:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private labelDiscountPercent:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final labelIcon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private labelSkuType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logoGoldIcon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logoIcon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logoWhiteIcon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originPriceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final payAmount:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final payType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private payTypeName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final planId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pricePerDay:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private productId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rememberPaymentTip:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->Companion:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    const v24, 0x7fffff

    const/16 v25, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    move-object v1, p1

    .line 11
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->skuId:Ljava/lang/String;

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->productId:Ljava/lang/String;

    move-object v1, p3

    .line 13
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payType:Ljava/lang/Integer;

    move-object v1, p4

    .line 14
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    move-object v1, p6

    .line 16
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->bonus:Ljava/lang/Integer;

    move-object v1, p7

    .line 17
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->coins:Ljava/lang/Integer;

    move-object v1, p8

    .line 18
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoIcon:Ljava/lang/String;

    move-object v1, p9

    .line 19
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoWhiteIcon:Ljava/lang/String;

    move-object v1, p10

    .line 20
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoGoldIcon:Ljava/lang/String;

    move-object v1, p11

    .line 21
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelIcon:Ljava/lang/String;

    move-object v1, p12

    .line 22
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payTypeName:Ljava/lang/String;

    move-object v1, p13

    .line 23
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 24
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPercent:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 25
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->countryCode:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 26
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currency:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 27
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 28
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->pricePerDay:Ljava/lang/Float;

    move-object/from16 v1, p19

    .line 29
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->planId:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 30
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelDiscountPercent:Ljava/lang/Integer;

    move-object/from16 v1, p21

    .line 31
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelSkuType:Ljava/lang/Integer;

    move-object/from16 v1, p22

    .line 32
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->rememberPaymentTip:Ljava/lang/String;

    move/from16 v1, p23

    .line 33
    iput v1, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPeriodNum:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 2
    sget-object v4, Lqf/e;->a:Lqf/e;

    invoke-virtual {v4}, Lqf/e;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    .line 6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v9, v0, 0x2000

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v9, p14

    :goto_d
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    .line 8
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    move/from16 v0, p23

    :goto_16
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v2

    move-object/from16 p15, v9

    move-object/from16 p16, v6

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move/from16 p24, v0

    .line 9
    invoke-direct/range {p1 .. p24}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p20

    .line 4
    .line 5
    if-nez p21, :cond_13

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->skuId:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object/from16 v2, p1

    .line 15
    .line 16
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payType:Ljava/lang/Integer;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v3, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v4, p3

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v5, p4

    .line 42
    .line 43
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 44
    .line 45
    if-eqz v6, :cond_4

    .line 46
    .line 47
    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->bonus:Ljava/lang/Integer;

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move-object/from16 v6, p5

    .line 51
    .line 52
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 53
    .line 54
    if-eqz v7, :cond_5

    .line 55
    .line 56
    iget-object v7, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->coins:Ljava/lang/Integer;

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    move-object/from16 v7, p6

    .line 60
    .line 61
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 62
    .line 63
    if-eqz v8, :cond_6

    .line 64
    .line 65
    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoIcon:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_6
    move-object/from16 v8, p7

    .line 69
    .line 70
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 71
    .line 72
    if-eqz v9, :cond_7

    .line 73
    .line 74
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoWhiteIcon:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_7
    move-object/from16 v9, p8

    .line 78
    .line 79
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 80
    .line 81
    if-eqz v10, :cond_8

    .line 82
    .line 83
    iget-object v10, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoGoldIcon:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    move-object/from16 v10, p9

    .line 87
    .line 88
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 89
    .line 90
    if-eqz v11, :cond_9

    .line 91
    .line 92
    iget-object v11, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelIcon:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_9

    .line 95
    :cond_9
    move-object/from16 v11, p10

    .line 96
    .line 97
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 98
    .line 99
    if-eqz v12, :cond_a

    .line 100
    .line 101
    iget-object v12, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy:Ljava/lang/Boolean;

    .line 102
    .line 103
    goto :goto_a

    .line 104
    :cond_a
    move-object/from16 v12, p11

    .line 105
    .line 106
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 107
    .line 108
    if-eqz v13, :cond_b

    .line 109
    .line 110
    iget-object v13, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPercent:Ljava/lang/Integer;

    .line 111
    .line 112
    goto :goto_b

    .line 113
    :cond_b
    move-object/from16 v13, p12

    .line 114
    .line 115
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 116
    .line 117
    if-eqz v14, :cond_c

    .line 118
    .line 119
    iget-object v14, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currency:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_c

    .line 122
    :cond_c
    move-object/from16 v14, p13

    .line 123
    .line 124
    :goto_c
    and-int/lit16 v15, v1, 0x2000

    .line 125
    .line 126
    if-eqz v15, :cond_d

    .line 127
    .line 128
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_d

    .line 131
    :cond_d
    move-object/from16 v15, p14

    .line 132
    .line 133
    :goto_d
    move-object/from16 p14, v15

    .line 134
    .line 135
    and-int/lit16 v15, v1, 0x4000

    .line 136
    .line 137
    if-eqz v15, :cond_e

    .line 138
    .line 139
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->pricePerDay:Ljava/lang/Float;

    .line 140
    .line 141
    goto :goto_e

    .line 142
    :cond_e
    move-object/from16 v15, p15

    .line 143
    .line 144
    :goto_e
    const v16, 0x8000

    .line 145
    .line 146
    .line 147
    and-int v16, v1, v16

    .line 148
    .line 149
    move-object/from16 p15, v15

    .line 150
    .line 151
    if-eqz v16, :cond_f

    .line 152
    .line 153
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelDiscountPercent:Ljava/lang/Integer;

    .line 154
    .line 155
    goto :goto_f

    .line 156
    :cond_f
    move-object/from16 v15, p16

    .line 157
    .line 158
    :goto_f
    const/high16 v16, 0x10000

    .line 159
    .line 160
    and-int v16, v1, v16

    .line 161
    .line 162
    move-object/from16 p16, v15

    .line 163
    .line 164
    if-eqz v16, :cond_10

    .line 165
    .line 166
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelSkuType:Ljava/lang/Integer;

    .line 167
    .line 168
    goto :goto_10

    .line 169
    :cond_10
    move-object/from16 v15, p17

    .line 170
    .line 171
    :goto_10
    const/high16 v16, 0x20000

    .line 172
    .line 173
    and-int v16, v1, v16

    .line 174
    .line 175
    if-eqz v16, :cond_11

    .line 176
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v16

    .line 181
    goto :goto_11

    .line 182
    :cond_11
    move-object/from16 v16, p18

    .line 183
    .line 184
    :goto_11
    const/high16 v17, 0x40000

    .line 185
    .line 186
    and-int v1, v1, v17

    .line 187
    .line 188
    if-eqz v1, :cond_12

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    goto :goto_12

    .line 195
    :cond_12
    move-object/from16 v1, p19

    .line 196
    .line 197
    :goto_12
    move-object/from16 p1, v2

    .line 198
    .line 199
    move-object/from16 p2, v3

    .line 200
    .line 201
    move-object/from16 p3, v4

    .line 202
    .line 203
    move-object/from16 p4, v5

    .line 204
    .line 205
    move-object/from16 p5, v6

    .line 206
    .line 207
    move-object/from16 p6, v7

    .line 208
    .line 209
    move-object/from16 p7, v8

    .line 210
    .line 211
    move-object/from16 p8, v9

    .line 212
    .line 213
    move-object/from16 p9, v10

    .line 214
    .line 215
    move-object/from16 p10, v11

    .line 216
    .line 217
    move-object/from16 p11, v12

    .line 218
    .line 219
    move-object/from16 p12, v13

    .line 220
    .line 221
    move-object/from16 p13, v14

    .line 222
    .line 223
    move-object/from16 p17, v15

    .line 224
    .line 225
    move-object/from16 p18, v16

    .line 226
    .line 227
    move-object/from16 p19, v1

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p19}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0

    .line 234
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 235
    .line 236
    const-string v1, "Super calls with default arguments not supported in this target, function: copy"

    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0
.end method

.method public static synthetic formatRenewPrice$default(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->formatRenewPrice(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: formatRenewPrice"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    move-object/from16 v10, p9

    .line 18
    .line 19
    move-object/from16 v11, p10

    .line 20
    .line 21
    move-object/from16 v13, p11

    .line 22
    .line 23
    move-object/from16 v14, p12

    .line 24
    .line 25
    move-object/from16 v16, p13

    .line 26
    .line 27
    move-object/from16 v17, p14

    .line 28
    .line 29
    move-object/from16 v18, p15

    .line 30
    .line 31
    new-instance v15, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 32
    .line 33
    move-object v0, v15

    .line 34
    const v24, 0x7c4802

    .line 35
    .line 36
    .line 37
    const/16 v25, 0x0

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/16 v19, 0x0

    .line 42
    .line 43
    move-object/from16 v26, v15

    .line 44
    .line 45
    move-object/from16 v15, v19

    .line 46
    .line 47
    const/16 v20, 0x0

    .line 48
    .line 49
    const/16 v21, 0x0

    .line 50
    .line 51
    const/16 v22, 0x0

    .line 52
    .line 53
    const/16 v23, 0x0

    .line 54
    .line 55
    invoke-direct/range {v0 .. v25}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v0, p16

    .line 59
    .line 60
    move-object/from16 v1, v26

    .line 61
    .line 62
    iput-object v0, v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelDiscountPercent:Ljava/lang/Integer;

    .line 63
    .line 64
    move-object/from16 v0, p17

    .line 65
    .line 66
    iput-object v0, v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelSkuType:Ljava/lang/Integer;

    .line 67
    .line 68
    move-object/from16 v0, p18

    .line 69
    .line 70
    iput-object v0, v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->originPriceText:Ljava/lang/String;

    .line 71
    .line 72
    move-object/from16 v0, p19

    .line 73
    .line 74
    iput-object v0, v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPriceText:Ljava/lang/String;

    .line 75
    .line 76
    return-object v1
.end method

.method public final formatRenewPrice(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    iget-object v3, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payType:Ljava/lang/Integer;

    .line 23
    .line 24
    sget-object v4, Lqf/e;->a:Lqf/e;

    .line 25
    .line 26
    invoke-virtual {v4}, Lqf/e;->a()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x5

    .line 31
    const/4 v6, 0x1

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eq v3, v4, :cond_7

    .line 40
    .line 41
    :goto_2
    cmpl-float v1, v0, v1

    .line 42
    .line 43
    if-lez v1, :cond_7

    .line 44
    .line 45
    cmpg-float v0, v0, v2

    .line 46
    .line 47
    if-gez v0, :cond_7

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v0, v5, :cond_5

    .line 57
    .line 58
    :goto_3
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ne v0, v6, :cond_7

    .line 66
    .line 67
    :cond_5
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I0()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 84
    .line 85
    sget p2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_day_2_week:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, p2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :cond_6
    iget p2, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPeriodNum:I

    .line 113
    .line 114
    if-le p2, v6, :cond_7

    .line 115
    .line 116
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 117
    .line 118
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week_new:I

    .line 119
    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eq p2, v6, :cond_13

    .line 157
    .line 158
    :goto_5
    if-nez p1, :cond_9

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-ne p2, v5, :cond_a

    .line 166
    .line 167
    goto :goto_d

    .line 168
    :cond_a
    :goto_6
    if-nez p1, :cond_b

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    const/4 v0, 0x2

    .line 176
    if-eq p2, v0, :cond_12

    .line 177
    .line 178
    :goto_7
    if-nez p1, :cond_c

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    const/4 v0, 0x6

    .line 186
    if-ne p2, v0, :cond_d

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_d
    :goto_8
    if-nez p1, :cond_e

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    const/4 v0, 0x4

    .line 197
    if-eq p2, v0, :cond_11

    .line 198
    .line 199
    :goto_9
    if-nez p1, :cond_f

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    const/4 p2, 0x7

    .line 207
    if-ne p1, p2, :cond_10

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_10
    :goto_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    goto :goto_e

    .line 215
    :cond_11
    :goto_b
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 216
    .line 217
    sget p2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_year:I

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, p2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    goto :goto_e

    .line 236
    :cond_12
    :goto_c
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 237
    .line 238
    sget p2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_month:I

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1, p2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    goto :goto_e

    .line 257
    :cond_13
    :goto_d
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 258
    .line 259
    sget p2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week:I

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, p2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    :goto_e
    return-object p1
.end method

.method public final getBonus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->bonus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoins()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->coins:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrencyUnit()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscountPercent()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPercent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscountPeriodNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPeriodNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDiscountPriceText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPriceText:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPriceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currency:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "$ "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    return-object v0
.end method

.method public final getFirstAmount()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelDiscountPercent()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelDiscountPercent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelSkuType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelSkuType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoGoldIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoGoldIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoWhiteIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->logoWhiteIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginPriceText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->originPriceText:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->originPriceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currencyUnit:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->currency:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "$ "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    return-object v0
.end method

.method public final getPayAmount()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payAmount:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayTypeName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlanId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->planId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPricePerDay()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->pricePerDay:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRememberPaymentTip()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->rememberPaymentTip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isFirstBuy()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isShowDiscountPrice()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->firstAmount:Ljava/lang/Float;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    return v0
.end method

.method public final setDiscountPeriodNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPeriodNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDiscountPriceText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->discountPriceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelDiscountPercent(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelDiscountPercent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelSkuType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->labelSkuType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginPriceText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->originPriceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPayTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->payTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRememberPaymentTip(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->rememberPaymentTip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
