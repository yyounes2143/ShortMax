.class public interface abstract Lw7/i;
.super Ljava/lang/Object;
.source "ComponentRegistrarProcessor.java"


# static fields
.field public static final a:Lw7/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw7/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lw7/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw7/i;->a:Lw7/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lw7/c<",
            "*>;>;"
        }
    .end annotation
.end method
