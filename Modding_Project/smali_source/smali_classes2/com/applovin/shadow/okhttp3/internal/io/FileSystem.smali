.class public interface abstract Lcom/applovin/shadow/okhttp3/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM:Lcom/applovin/shadow/okhttp3/internal/io/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/io/FileSystem;->Companion:Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion;

    .line 4
    .line 5
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion$SystemFileSystem;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/internal/io/FileSystem$Companion$SystemFileSystem;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/io/FileSystem;->SYSTEM:Lcom/applovin/shadow/okhttp3/internal/io/FileSystem;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract appendingSink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract delete(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deleteContents(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exists(Ljava/io/File;)Z
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract size(Ljava/io/File;)J
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract source(Ljava/io/File;)Lcom/applovin/shadow/okio/Source;
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
