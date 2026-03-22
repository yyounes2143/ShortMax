.class public final synthetic Lvt/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lvt/i0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lvt/i0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvt/h0;->a:Lvt/i0;

    .line 5
    .line 6
    iput-object p2, p0, Lvt/h0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lvt/h0;->a:Lvt/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lvt/h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lvt/i0;->a(Lvt/i0;Ljava/lang/String;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
