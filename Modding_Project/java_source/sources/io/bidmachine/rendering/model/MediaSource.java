package io.bidmachine.rendering.model;

import android.webkit.MimeTypeMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.h;
import rq.o0;
import tp.k;
import yq.r;
@Metadata
/* loaded from: classes8.dex */
public abstract class MediaSource {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f58545b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final DeliveryType f58546a;

    @Metadata
    /* loaded from: classes8.dex */
    public enum DeliveryType {
        PRELOAD,
        STREAM
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final MediaSource a(@Nullable String str) {
            MediaSource c10 = c(str);
            if (c10 == null) {
                MediaSource d10 = d(str);
                if (d10 == null) {
                    if (str != null) {
                        return b(str);
                    }
                    return null;
                }
                return d10;
            }
            return c10;
        }

        @Nullable
        public final MediaSource b(@Nullable String str) {
            if (str == null) {
                return null;
            }
            if (StringsKt.t0(str)) {
                str = null;
            }
            if (str == null) {
                return null;
            }
            return new h(str);
        }

        @Nullable
        public final MediaSource c(@Nullable String str) {
            try {
                String a10 = k.f67634a.a(str);
                if (a10 != null) {
                    return MediaSource.f58545b.b(a10);
                }
            } catch (Throwable unused) {
            }
            return null;
        }

        @Nullable
        public final MediaSource d(@Nullable String str) {
            String k10 = r.k(str);
            if (k10 != null && !StringsKt.t0(k10) && r.p(k10)) {
                DeliveryType deliveryType = DeliveryType.PRELOAD;
                try {
                    if (StringsKt.A(MimeTypeMap.getFileExtensionFromUrl(k10), "m3u8", true)) {
                        deliveryType = DeliveryType.STREAM;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable unused) {
                }
                return new o0(k10, deliveryType);
            }
            return null;
        }

        private a() {
        }
    }

    public /* synthetic */ MediaSource(DeliveryType deliveryType, DefaultConstructorMarker defaultConstructorMarker) {
        this(deliveryType);
    }

    @NotNull
    public DeliveryType a() {
        return this.f58546a;
    }

    private MediaSource(DeliveryType deliveryType) {
        this.f58546a = deliveryType;
    }
}
