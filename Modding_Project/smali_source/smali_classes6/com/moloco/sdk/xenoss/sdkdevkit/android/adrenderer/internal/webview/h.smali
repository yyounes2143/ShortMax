.class public final synthetic Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lat/t;

.field public final synthetic g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->b:Landroid/webkit/WebView;

    .line 7
    .line 8
    iput p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->d:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->f:Lat/t;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 17
    .line 18
    iput p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->h:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->a:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->d:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->f:Lat/t;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 14
    .line 15
    iget v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;->h:I

    .line 16
    .line 17
    move-object v8, p1

    .line 18
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static/range {v0 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->g(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method
