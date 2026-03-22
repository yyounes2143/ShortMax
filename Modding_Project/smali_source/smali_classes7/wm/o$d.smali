.class Lwm/o$d;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwm/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lwm/o;


# direct methods
.method private constructor <init>(Lwm/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm/o$d;->a:Lwm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwm/o;Lwm/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwm/o$d;-><init>(Lwm/o;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwm/o$d;->a:Lwm/o;

    .line 2
    .line 3
    invoke-static {v0}, Lwm/o;->m(Lwm/o;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method
