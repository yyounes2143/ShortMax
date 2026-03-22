.class public final synthetic Lz/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/tencent/mmkv/MMKV$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lz/b;

.field public final synthetic c:Ldd/d;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lz/b;Ldd/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lz/a;->b:Lz/b;

    .line 7
    .line 8
    iput-object p3, p0, Lz/a;->c:Ldd/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final loadLibrary(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lz/a;->b:Lz/b;

    .line 4
    .line 5
    iget-object v2, p0, Lz/a;->c:Ldd/d;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lz/b;->f(Landroid/content/Context;Lz/b;Ldd/d;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
