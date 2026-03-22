package com.applovin.shadow.okhttp3.internal.ws;

import com.applovin.shadow.okio.ByteString;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MessageDeflater.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MessageDeflaterKt {
    @NotNull
    private static final ByteString EMPTY_DEFLATE_BLOCK = ByteString.Companion.decodeHex("000000ffff");
    private static final int LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION = 4;
}
