.class public final synthetic Lut/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lut/f;->a:Lkotlinx/serialization/descriptors/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lut/f;->a:Lkotlinx/serialization/descriptors/a;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/serialization/descriptors/a;->j(Lkotlinx/serialization/descriptors/a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
