.class public final synthetic Lio/bidmachine/p3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/p3;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/p3;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMccmnc(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method
