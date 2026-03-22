.class public abstract Lio/bidmachine/analytics/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue;
    .locals 5

    .line 20
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 23
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/b0;->a(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 24
    :cond_0
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/b0;->a(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 25
    :cond_1
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 26
    :cond_2
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 28
    :goto_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;
    .locals 1

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct;
    .locals 6

    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 9
    :try_start_0
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 11
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/b0;->a(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 12
    :cond_0
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/b0;->a(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_1
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_2
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 16
    :goto_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public static final a(J)Lcom/explorestack/protobuf/Timestamp;
    .locals 5

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->newBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 2
    div-long v3, p0, v1

    invoke-virtual {v0, v3, v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 3
    rem-long/2addr p0, v1

    const v1, 0xf4240

    int-to-long v1, v1

    mul-long/2addr p0, v1

    long-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->setNanos(I)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method
