package ue;

import android.media.MediaDrm;
import android.os.Build;
import com.startshorts.androidplayer.log.Logger;
import java.util.Arrays;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeviceID.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f68416a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final b f68417b = new b();

    /* compiled from: DeviceID.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final b a() {
            return b.f68417b;
        }

        private a() {
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence e(byte b10) {
        String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final c c() {
        c cVar = new c(null, null, 3, null);
        try {
            cVar.d(Build.BOARD + Arrays.toString(Build.SUPPORTED_ABIS) + Build.DEVICE + Build.MANUFACTURER + Build.BRAND + Build.MODEL + Build.PRODUCT + Build.HARDWARE);
        } catch (Error e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "Critical error";
            }
            cVar.c(message);
        } catch (Exception e11) {
            String message2 = e11.getMessage();
            if (message2 == null) {
                message2 = "Unknown error";
            }
            cVar.c(message2);
        }
        return cVar;
    }

    @NotNull
    public final c d() {
        c cVar = new c(null, null, 3, null);
        try {
            MediaDrm mediaDrm = new MediaDrm(new UUID(-1301668207276963122L, -6645017420763422227L));
            byte[] propertyByteArray = mediaDrm.getPropertyByteArray("deviceUniqueId");
            Intrinsics.checkNotNullExpressionValue(propertyByteArray, "getPropertyByteArray(...)");
            cVar.d(n.P0(propertyByteArray, "", null, null, 0, null, new Function1() { // from class: ue.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CharSequence e10;
                    e10 = b.e(((Byte) obj).byteValue());
                    return e10;
                }
            }, 30, null));
            if (Build.VERSION.SDK_INT >= 28) {
                mediaDrm.release();
            } else {
                mediaDrm.release();
            }
        } catch (Error e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "Critical error";
            }
            cVar.c(message);
        } catch (Exception e11) {
            String message2 = e11.getMessage();
            if (message2 == null) {
                message2 = "Unknown error";
            }
            cVar.c(message2);
        }
        Logger logger = Logger.f41511a;
        logger.h("DeviceID", "DeviceID: getWidevineID result(" + cVar + ')');
        return cVar;
    }
}
