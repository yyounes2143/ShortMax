.class public final synthetic Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/t;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;->a:J

    .line 3
    .line 4
    iget-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;->b:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    move-object v4, p1

    .line 7
    check-cast v4, Landroid/content/Context;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    check-cast v5, Landroid/webkit/WebView;

    .line 11
    .line 12
    move-object/from16 v6, p3

    .line 13
    .line 14
    check-cast v6, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    move-object/from16 v7, p4

    .line 21
    .line 22
    check-cast v7, Lkt/e;

    .line 23
    .line 24
    move-object/from16 v8, p5

    .line 25
    .line 26
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    move-object/from16 v9, p6

    .line 29
    .line 30
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    move-object/from16 v10, p7

    .line 33
    .line 34
    check-cast v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 35
    .line 36
    move-object/from16 v11, p8

    .line 37
    .line 38
    check-cast v11, Landroidx/compose/ui/unit/Dp;

    .line 39
    .line 40
    move-object/from16 v12, p9

    .line 41
    .line 42
    check-cast v12, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    invoke-static/range {v1 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->c(JLkotlin/jvm/functions/Function2;Landroid/content/Context;Landroid/webkit/WebView;ILkt/e;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/ui/unit/Dp;Z)Landroidx/compose/ui/platform/ComposeView;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    return-object v1
.end method
