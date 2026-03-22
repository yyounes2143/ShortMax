.class public final Lio/bidmachine/rendering/internal/controller/h$f$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h$f$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;JJF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-wide p2, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->b:J

    .line 4
    .line 5
    iput-wide p4, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->c:J

    .line 6
    .line 7
    iput p6, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->d:F

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ltp/v;

    .line 5
    .line 6
    iget-wide v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->b:J

    .line 7
    .line 8
    iget-wide v4, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->c:J

    .line 9
    .line 10
    iget v6, p0, Lio/bidmachine/rendering/internal/controller/h$f$j$a;->d:F

    .line 11
    .line 12
    invoke-interface/range {v1 .. v6}, Ltp/v;->e(JJF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
