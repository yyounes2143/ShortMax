.class public final synthetic Llf/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llf/r;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ss/ttvideoengine/utils/Error;

.field public final synthetic d:Lcom/ss/ttvideoengine/Resolution;


# direct methods
.method public synthetic constructor <init>(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llf/g;->a:Llf/r;

    .line 5
    .line 6
    iput-object p2, p0, Llf/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Llf/g;->c:Lcom/ss/ttvideoengine/utils/Error;

    .line 9
    .line 10
    iput-object p4, p0, Llf/g;->d:Lcom/ss/ttvideoengine/Resolution;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Llf/g;->a:Llf/r;

    .line 2
    .line 3
    iget-object v1, p0, Llf/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Llf/g;->c:Lcom/ss/ttvideoengine/utils/Error;

    .line 6
    .line 7
    iget-object v3, p0, Llf/g;->d:Lcom/ss/ttvideoengine/Resolution;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Llf/r$a;->a(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
