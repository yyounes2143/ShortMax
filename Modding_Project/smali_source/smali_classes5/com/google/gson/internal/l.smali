.class public final synthetic Lcom/google/gson/internal/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic a:Lcom/google/gson/InstanceCreator;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/l;->a:Lcom/google/gson/InstanceCreator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/gson/internal/l;->b:Ljava/lang/reflect/Type;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/l;->a:Lcom/google/gson/InstanceCreator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/gson/internal/l;->b:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->i(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
