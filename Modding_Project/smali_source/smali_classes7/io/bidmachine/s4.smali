.class public final synthetic Lio/bidmachine/s4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lvm/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/bidmachine/NetworkRegistryCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/s4;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/s4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/s4;->c:Lio/bidmachine/NetworkRegistryCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/s4;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/s4;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/s4;->c:Lio/bidmachine/NetworkRegistryCallback;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/NetworkRegistry;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
