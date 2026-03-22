.class public final synthetic Lio/bidmachine/o4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Lio/bidmachine/NetworkConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/o4;->a:Lio/bidmachine/NetworkConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/o4;->a:Lio/bidmachine/NetworkConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/r4;->e(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
