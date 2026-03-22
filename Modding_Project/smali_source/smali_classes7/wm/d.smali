.class public final synthetic Lwm/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FFLjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lwm/d;->a:F

    .line 5
    .line 6
    iput p2, p0, Lwm/d;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Lwm/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lwm/d;->d:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lwm/d;->a:F

    .line 2
    .line 3
    iget v1, p0, Lwm/d;->b:F

    .line 4
    .line 5
    iget-object v2, p0, Lwm/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lwm/d;->d:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lwm/o;->i(FFLjava/lang/String;Landroid/view/View;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
