.class public final synthetic Lcom/moloco/sdk/internal/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/Modifier;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/e0;->a:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/e0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/internal/e0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/moloco/sdk/internal/e0;->d:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/moloco/sdk/internal/e0;->e:J

    .line 13
    .line 14
    iput-object p8, p0, Lcom/moloco/sdk/internal/e0;->f:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput p9, p0, Lcom/moloco/sdk/internal/e0;->g:I

    .line 17
    .line 18
    iput p10, p0, Lcom/moloco/sdk/internal/e0;->h:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/e0;->a:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/e0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/e0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/internal/e0;->d:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/moloco/sdk/internal/e0;->e:J

    .line 10
    .line 11
    iget-object v7, p0, Lcom/moloco/sdk/internal/e0;->f:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iget v8, p0, Lcom/moloco/sdk/internal/e0;->g:I

    .line 14
    .line 15
    iget v9, p0, Lcom/moloco/sdk/internal/e0;->h:I

    .line 16
    .line 17
    move-object v10, p1

    .line 18
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    invoke-static/range {v0 .. v11}, Lcom/moloco/sdk/internal/f0;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method
