.class public final synthetic Lvt/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lvt/g0;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lvt/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvt/f0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lvt/f0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lvt/f0;->c:Lvt/g0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lvt/f0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lvt/f0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lvt/f0;->c:Lvt/g0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lvt/g0;->x(ILjava/lang/String;Lvt/g0;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
