.class public final synthetic Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Lcom/moloco/sdk/internal/ortb/model/i;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->b:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->d:Z

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->e:J

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->f:J

    .line 15
    .line 16
    iput-wide p9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->g:J

    .line 17
    .line 18
    iput-object p11, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->h:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 19
    .line 20
    iput p12, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->i:I

    .line 21
    .line 22
    iput p13, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->j:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->b:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->c:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->d:Z

    .line 10
    .line 11
    iget-wide v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->e:J

    .line 12
    .line 13
    iget-wide v7, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->f:J

    .line 14
    .line 15
    iget-wide v9, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->g:J

    .line 16
    .line 17
    iget-object v11, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->h:Lcom/moloco/sdk/internal/ortb/model/i;

    .line 18
    .line 19
    iget v12, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->i:I

    .line 20
    .line 21
    iget v13, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;->j:I

    .line 22
    .line 23
    move-object/from16 v14, p1

    .line 24
    .line 25
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 26
    .line 27
    move-object/from16 v15, p2

    .line 28
    .line 29
    check-cast v15, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v15

    .line 35
    invoke-static/range {v1 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    return-object v1
.end method
