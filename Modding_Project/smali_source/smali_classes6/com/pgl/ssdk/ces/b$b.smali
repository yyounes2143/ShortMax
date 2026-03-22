.class Lcom/pgl/ssdk/ces/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/ces/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b$b;->a:Lcom/pgl/ssdk/ces/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method
