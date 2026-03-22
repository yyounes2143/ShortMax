package com.ss.ttvideoengine.source.strategy;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.AppInfo;
import com.ss.ttvideoengine.FeatureManager;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.selector.BestResolution;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
public class CodecStrategy {
    public static final List<Dimension> COST_SAVING_FIRST_LIST;
    public static final List<Dimension> FALLBACK_LIST;
    public static final List<Dimension> HARDWARE_DECODE_FIRST_LIST;
    public static final int KEY_COST_SAVING_FIST = 1;
    public static final int KEY_HARDWARE_DECODE_FIRST = 2;
    public static final String TAG = "CodecStrategy";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.source.strategy.CodecStrategy$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$ttvideoengine$source$Source$Type;
        static final /* synthetic */ int[] $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension;

        static {
            int[] iArr = new int[Source.Type.values().length];
            $SwitchMap$com$ss$ttvideoengine$source$Source$Type = iArr;
            try {
                iArr[Source.Type.DIRECT_URL_SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$Source$Type[Source.Type.VID_PLAY_AUTH_TOKEN_SOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Dimension.values().length];
            $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension = iArr2;
            try {
                iArr2[Dimension.h265_HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[Dimension.h265_SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[Dimension.h266_SOFTWARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[Dimension.H264_HARDWARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[Dimension.H264_SOFTWARE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class Decoder {
        public static final int HARDWARE = 1;
        public static final int SOFTWARE = 0;

        private static boolean isDeviceSupport(Dimension dimension) {
            int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[dimension.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return true;
                            }
                            throw new IllegalArgumentException("unsupported dimension! " + dimension);
                        }
                        return isSupportH264HardwareDecode();
                    } else if (isSupporth265SoftwareDecode()) {
                        return isSupporth266SoftWareDecode();
                    } else {
                        return false;
                    }
                }
                return isSupporth265SoftwareDecode();
            }
            return isSupporth265HardwareDecode();
        }

        private static boolean isSDKSupport(Dimension dimension) {
            int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension[dimension.ordinal()];
            if (i10 == 1) {
                return true;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4 || i10 == 5) {
                        return true;
                    }
                    throw new IllegalArgumentException("unsupported dimension! " + dimension);
                }
                return FeatureManager.hasPermission("h266");
            }
            return isSupporth265SoftwareCapability();
        }

        public static boolean isSupport(Dimension dimension) {
            if (isDeviceSupport(dimension) && isSDKSupport(dimension)) {
                return true;
            }
            return false;
        }

        private static boolean isSupportH264HardwareDecode() {
            if (InfoWrapper.getH264HardwareEnable() == 1) {
                return true;
            }
            return false;
        }

        private static boolean isSupporth265HardwareDecode() {
            if (InfoWrapper.geth265HardwareEnable() == 1) {
                return true;
            }
            return false;
        }

        private static boolean isSupporth265SoftwareCapability() {
            if (InfoWrapper.geth265SoftwareCapabilityEnable() == 1) {
                return true;
            }
            return false;
        }

        private static boolean isSupporth265SoftwareDecode() {
            if (InfoWrapper.geth265SoftwareEnable() == 1) {
                return true;
            }
            return false;
        }

        private static boolean isSupporth266SoftWareDecode() {
            if (InfoWrapper.geth266SoftwareEnable() == 1) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes6.dex */
    public enum Dimension {
        h265_HARDWARE(1, "h265"),
        h265_SOFTWARE(0, "h265"),
        h266_SOFTWARE(0, "h266"),
        H264_HARDWARE(1, "h264"),
        H264_SOFTWARE(0, "h264");
        
        public final int decoder;
        public final String encodeType;

        Dimension(int i10, String str) {
            this.decoder = i10;
            this.encodeType = str;
        }
    }

    /* loaded from: classes6.dex */
    public static final class SmartUrlVod {
        private static final Resolution SMART_URL_DEFAULT_RESOLUTION = Resolution.SuperHigh;

        public static String encodeType() {
            return "h265";
        }

        public static Resolution findTargetResolution(IVideoModel iVideoModel) {
            return BestResolution.findDefaultResolution(iVideoModel, videoResolution());
        }

        public static String getApiHost() {
            return AppInfo.getSmartUrlApiHost();
        }

        public static boolean isEnable(DirectUrlSource directUrlSource) {
            if (directUrlSource.isSmartUrlValid() && isSettingsEnable()) {
                return true;
            }
            return false;
        }

        public static boolean isSettingsEnable() {
            if (InfoWrapper.getSmartUrlEnabled() == 1) {
                return true;
            }
            return false;
        }

        public static Resolution videoResolution() {
            return SMART_URL_DEFAULT_RESOLUTION;
        }
    }

    static {
        Dimension dimension = Dimension.h266_SOFTWARE;
        Dimension dimension2 = Dimension.h265_HARDWARE;
        Dimension dimension3 = Dimension.h265_SOFTWARE;
        Dimension dimension4 = Dimension.H264_HARDWARE;
        Dimension dimension5 = Dimension.H264_SOFTWARE;
        COST_SAVING_FIRST_LIST = Collections.unmodifiableList(Arrays.asList(dimension, dimension2, dimension3, dimension4, dimension5));
        HARDWARE_DECODE_FIRST_LIST = Collections.unmodifiableList(Arrays.asList(dimension2, dimension4, dimension, dimension3, dimension5));
        FALLBACK_LIST = Collections.unmodifiableList(Arrays.asList(dimension5, dimension4, dimension3, dimension2, dimension));
    }

    public static List<Dimension> dimensions(StrategySource strategySource) {
        int codecStrategy = strategySource.codecStrategy();
        if (codecStrategy == 1) {
            return supportedDimensions(strategySource, COST_SAVING_FIRST_LIST);
        }
        if (codecStrategy == 2) {
            return supportedDimensions(strategySource, HARDWARE_DECODE_FIRST_LIST);
        }
        throw new IllegalArgumentException("unsupported strategy! " + codecStrategy);
    }

    public static String dump() {
        return "smartUrl=" + InfoWrapper.getSmartUrlEnabled() + ", 4_h=" + InfoWrapper.getH264HardwareEnable() + ", b_h=" + InfoWrapper.geth265HardwareEnable() + ", b_s=" + InfoWrapper.geth265SoftwareEnable() + ", b_s_cap=" + InfoWrapper.geth265SoftwareCapabilityEnable() + ", b2_s=" + InfoWrapper.geth266SoftwareEnable();
    }

    public static List<Dimension> fallbackDimensions(StrategySource strategySource) {
        return supportedDimensions(strategySource, FALLBACK_LIST);
    }

    public static boolean isCodecStrategyValid(int i10) {
        if (i10 == 1 || i10 == 2) {
            return true;
        }
        return false;
    }

    @Nullable
    private static ResolveResult resolveDirectUrl(@NonNull DirectUrlSource directUrlSource, @NonNull List<Dimension> list, @Nullable List<Dimension> list2) {
        if (directUrlSource.allItems().isEmpty()) {
            return null;
        }
        for (Dimension dimension : list) {
            if (list2 == null || !list2.contains(dimension)) {
                DirectUrlSource.UrlItem findItemByEncodeType = directUrlSource.findItemByEncodeType(dimension.encodeType);
                if (findItemByEncodeType != null) {
                    return new ResolveResult(directUrlSource, dimension, findItemByEncodeType, null);
                }
            }
        }
        return null;
    }

    @Nullable
    public static ResolveResult resolveFallback(@NonNull StrategySource strategySource, @Nullable List<Dimension> list) {
        List<Dimension> fallbackDimensions = fallbackDimensions(strategySource);
        Source.Type type = strategySource.type();
        int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$Source$Type[type.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return resolveVidPlayAuthToken((VidPlayAuthTokenSource) strategySource, fallbackDimensions, list);
            }
            throw new IllegalArgumentException("unsupported type! " + type);
        }
        return resolveDirectUrl((DirectUrlSource) strategySource, fallbackDimensions, list);
    }

    @Nullable
    private static ResolveResult resolveSmartUrl(@NonNull DirectUrlSource directUrlSource, @NonNull List<Dimension> list, @Nullable List<Dimension> list2) {
        if (directUrlSource.allItems().isEmpty()) {
            return null;
        }
        ArrayList<Dimension> arrayList = new ArrayList();
        for (Dimension dimension : list) {
            if (list2 == null || !list2.contains(dimension)) {
                arrayList.add(dimension);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        for (Dimension dimension2 : arrayList) {
            DirectUrlSource.UrlItem findItemByEncodeType = directUrlSource.findItemByEncodeType(dimension2.encodeType);
            if (findItemByEncodeType != null) {
                return new ResolveResult(directUrlSource, dimension2, findItemByEncodeType, null);
            }
            if (TextUtils.equals(dimension2.encodeType, SmartUrlVod.encodeType())) {
                return new ResolveResult(directUrlSource, dimension2, null, directUrlSource.firstItem());
            }
        }
        return null;
    }

    @Nullable
    public static ResolveResult resolveStartPlayback(@NonNull StrategySource strategySource, boolean z10) {
        List<Dimension> dimensions = dimensions(strategySource);
        Source.Type type = strategySource.type();
        int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$Source$Type[type.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return resolveVidPlayAuthToken((VidPlayAuthTokenSource) strategySource, dimensions, null);
            }
            throw new IllegalArgumentException("unsupported type! " + type);
        }
        DirectUrlSource directUrlSource = (DirectUrlSource) strategySource;
        if (SmartUrlVod.isEnable(directUrlSource) && z10) {
            return resolveSmartUrl(directUrlSource, dimensions, null);
        }
        return resolveDirectUrl(directUrlSource, dimensions, null);
    }

    @Nullable
    private static ResolveResult resolveVidPlayAuthToken(@NonNull VidPlayAuthTokenSource vidPlayAuthTokenSource, @NonNull List<Dimension> list, @Nullable List<Dimension> list2) {
        for (Dimension dimension : list) {
            if (list2 == null || !list2.contains(dimension)) {
                if (vidPlayAuthTokenSource.encodeType() == null || TextUtils.equals(vidPlayAuthTokenSource.encodeType(), dimension.encodeType)) {
                    return new ResolveResult(vidPlayAuthTokenSource, dimension);
                }
            }
        }
        return null;
    }

    @Nullable
    public static Dimension resolveWithEncoderType(@NonNull String str, @NonNull StrategySource strategySource, @Nullable List<Dimension> list) {
        for (Dimension dimension : dimensions(strategySource)) {
            if (list == null || !list.contains(dimension)) {
                if (TextUtils.equals(str, dimension.encodeType)) {
                    return dimension;
                }
            }
        }
        return null;
    }

    private static List<Dimension> supportedDimensions(StrategySource strategySource, List<Dimension> list) {
        List<String> list2;
        if (strategySource.type() == Source.Type.VID_PLAY_AUTH_TOKEN_SOURCE) {
            list2 = ((VidPlayAuthTokenSource) strategySource).supportedEncodeTypes();
        } else {
            list2 = null;
        }
        ArrayList arrayList = new ArrayList();
        for (Dimension dimension : list) {
            if (Decoder.isSupport(dimension) && (list2 == null || list2.contains(dimension.encodeType))) {
                arrayList.add(dimension);
            }
        }
        return arrayList;
    }

    /* loaded from: classes6.dex */
    public static class ResolveResult {
        @Nullable
        public Dimension correctedDimension;
        @NonNull
        public final Dimension dimension;
        @Nullable
        public final DirectUrlSource.UrlItem requestItem;
        @NonNull
        public final StrategySource source;
        @Nullable
        public final DirectUrlSource.UrlItem urlItem;

        public ResolveResult(@NonNull VidPlayAuthTokenSource vidPlayAuthTokenSource, @NonNull Dimension dimension) {
            this.source = vidPlayAuthTokenSource;
            this.dimension = dimension;
            this.urlItem = null;
            this.requestItem = null;
        }

        public String toString() {
            return "ResolveResult{vid=" + this.source.vid() + ", sourceType=" + this.source.type() + ", dimension=" + this.dimension + ", correctedDimension=" + this.correctedDimension + ", urlItem=" + this.urlItem + ", requestItem=" + this.requestItem + '}';
        }

        public ResolveResult(@NonNull DirectUrlSource directUrlSource, @NonNull Dimension dimension, @Nullable DirectUrlSource.UrlItem urlItem, @Nullable DirectUrlSource.UrlItem urlItem2) {
            this.source = directUrlSource;
            this.dimension = dimension;
            this.urlItem = urlItem;
            this.requestItem = urlItem2;
        }
    }
}
