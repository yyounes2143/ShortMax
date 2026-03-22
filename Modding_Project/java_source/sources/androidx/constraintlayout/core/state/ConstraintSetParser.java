package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.parser.CLString;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ConstraintSetParser {
    private static final boolean PARSER_DEBUG = false;

    /* loaded from: classes.dex */
    public static class DesignElement {
        String mId;
        HashMap<String, String> mParams;
        String mType;

        DesignElement(String str, String str2, HashMap<String, String> hashMap) {
            this.mId = str;
            this.mType = str2;
            this.mParams = hashMap;
        }

        public String getId() {
            return this.mId;
        }

        public HashMap<String, String> getParams() {
            return this.mParams;
        }

        public String getType() {
            return this.mType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FiniteGenerator implements GeneratedValue {
        float mFrom;
        float mInitial;
        float mMax;
        String mPostfix;
        String mPrefix;
        float mStep;
        float mTo;
        boolean mStop = false;
        float mCurrent = 0.0f;

        FiniteGenerator(float f10, float f11, float f12, String str, String str2) {
            this.mFrom = f10;
            this.mTo = f11;
            this.mStep = f12;
            this.mPrefix = str == null ? "" : str;
            this.mPostfix = str2 == null ? "" : str2;
            this.mMax = f11;
            this.mInitial = f10;
        }

        public ArrayList<String> array() {
            ArrayList<String> arrayList = new ArrayList<>();
            int i10 = (int) this.mInitial;
            int i11 = (int) this.mMax;
            int i12 = i10;
            while (i10 <= i11) {
                arrayList.add(this.mPrefix + i12 + this.mPostfix);
                i12 += (int) this.mStep;
                i10++;
            }
            return arrayList;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            float f10 = this.mCurrent;
            if (f10 >= this.mMax) {
                this.mStop = true;
            }
            if (!this.mStop) {
                this.mCurrent = f10 + this.mStep;
            }
            return this.mCurrent;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface GeneratedValue {
        float value();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Generator implements GeneratedValue {
        float mCurrent;
        float mIncrementBy;
        float mStart;
        boolean mStop = false;

        Generator(float f10, float f11) {
            this.mStart = f10;
            this.mIncrementBy = f11;
            this.mCurrent = f10;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            if (!this.mStop) {
                this.mCurrent += this.mIncrementBy;
            }
            return this.mCurrent;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutVariables {
        HashMap<String, Integer> mMargins = new HashMap<>();
        HashMap<String, GeneratedValue> mGenerators = new HashMap<>();
        HashMap<String, ArrayList<String>> mArrayIds = new HashMap<>();

        float get(Object obj) {
            if (obj instanceof CLString) {
                String content = ((CLString) obj).content();
                if (this.mGenerators.containsKey(content)) {
                    return this.mGenerators.get(content).value();
                }
                if (this.mMargins.containsKey(content)) {
                    return this.mMargins.get(content).floatValue();
                }
                return 0.0f;
            } else if (obj instanceof CLNumber) {
                return ((CLNumber) obj).getFloat();
            } else {
                return 0.0f;
            }
        }

        ArrayList<String> getList(String str) {
            if (this.mArrayIds.containsKey(str)) {
                return this.mArrayIds.get(str);
            }
            return null;
        }

        void put(String str, int i10) {
            this.mMargins.put(str, Integer.valueOf(i10));
        }

        public void putOverride(String str, float f10) {
            this.mGenerators.put(str, new OverrideValue(f10));
        }

        void put(String str, float f10, float f11) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            this.mGenerators.put(str, new Generator(f10, f11));
        }

        void put(String str, float f10, float f11, float f12, String str2, String str3) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            FiniteGenerator finiteGenerator = new FiniteGenerator(f10, f11, f12, str2, str3);
            this.mGenerators.put(str, finiteGenerator);
            this.mArrayIds.put(str, finiteGenerator.array());
        }

        void put(String str, ArrayList<String> arrayList) {
            this.mArrayIds.put(str, arrayList);
        }
    }

    /* loaded from: classes.dex */
    public enum MotionLayoutDebugFlags {
        NONE,
        SHOW_ALL,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class OverrideValue implements GeneratedValue {
        float mValue;

        OverrideValue(float f10) {
            this.mValue = f10;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            return this.mValue;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0169, code lost:
        if (r8.equals("visible") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void applyAttribute(androidx.constraintlayout.core.state.State r8, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r9, androidx.constraintlayout.core.state.ConstraintReference r10, androidx.constraintlayout.core.parser.CLObject r11, java.lang.String r12) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.applyAttribute(androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.parser.CLObject, java.lang.String):void");
    }

    private static int indexOf(String str, String... strArr) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].equals(str)) {
                return i10;
            }
        }
        return -1;
    }

    static String lookForType(CLObject cLObject) throws CLParsingException {
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            if (it.next().equals("type")) {
                return cLObject.getString("type");
            }
        }
        return null;
    }

    static void override(CLObject cLObject, String str, CLObject cLObject2) throws CLParsingException {
        if (!cLObject.has(str)) {
            cLObject.put(str, cLObject2);
            return;
        }
        CLObject object = cLObject.getObject(str);
        Iterator<String> it = cLObject2.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!next.equals("clear")) {
                object.put(next, cLObject2.get(next));
            } else {
                CLArray array = cLObject2.getArray("clear");
                for (int i10 = 0; i10 < array.size(); i10++) {
                    String stringOrNull = array.getStringOrNull(i10);
                    if (stringOrNull != null) {
                        char c10 = 65535;
                        switch (stringOrNull.hashCode()) {
                            case -1727069561:
                                if (stringOrNull.equals("transforms")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                            case -1606703562:
                                if (stringOrNull.equals("constraints")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 414334925:
                                if (stringOrNull.equals("dimensions")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                        }
                        switch (c10) {
                            case 0:
                                object.remove("visibility");
                                object.remove("alpha");
                                object.remove("pivotX");
                                object.remove("pivotY");
                                object.remove("rotationX");
                                object.remove("rotationY");
                                object.remove("rotationZ");
                                object.remove("scaleX");
                                object.remove("scaleY");
                                object.remove("translationX");
                                object.remove("translationY");
                                break;
                            case 1:
                                object.remove("start");
                                object.remove("end");
                                object.remove("top");
                                object.remove("bottom");
                                object.remove("baseline");
                                object.remove(TtmlNode.CENTER);
                                object.remove("centerHorizontally");
                                object.remove("centerVertically");
                                break;
                            case 2:
                                object.remove("width");
                                object.remove("height");
                                break;
                            default:
                                object.remove(stringOrNull);
                                break;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static void parseBarrier(State state, String str, CLObject cLObject) throws CLParsingException {
        boolean z10;
        char c10;
        boolean isRtl = state.isRtl();
        BarrierReference barrier = state.barrier(str, State.Direction.END);
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.hashCode();
            switch (next.hashCode()) {
                case -1081309778:
                    if (next.equals("margin")) {
                        z10 = false;
                        break;
                    }
                    z10 = true;
                    break;
                case -962590849:
                    if (next.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case -567445985:
                    if (next.equals("contains")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                default:
                    z10 = true;
                    break;
            }
            switch (z10) {
                case false:
                    float floatOrNaN = cLObject.getFloatOrNaN(next);
                    if (Float.isNaN(floatOrNaN)) {
                        break;
                    } else {
                        barrier.margin(Float.valueOf(toPix(state, floatOrNaN)));
                        break;
                    }
                case true:
                    String string = cLObject.getString(next);
                    string.hashCode();
                    switch (string.hashCode()) {
                        case -1383228885:
                            if (string.equals("bottom")) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 100571:
                            if (string.equals("end")) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 115029:
                            if (string.equals("top")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 3317767:
                            if (string.equals(TtmlNode.LEFT)) {
                                c10 = 3;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 108511772:
                            if (string.equals(TtmlNode.RIGHT)) {
                                c10 = 4;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 109757538:
                            if (string.equals("start")) {
                                c10 = 5;
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    switch (c10) {
                        case 0:
                            barrier.setBarrierDirection(State.Direction.BOTTOM);
                            continue;
                        case 1:
                            if (!isRtl) {
                                barrier.setBarrierDirection(State.Direction.RIGHT);
                                break;
                            } else {
                                barrier.setBarrierDirection(State.Direction.LEFT);
                                continue;
                            }
                        case 2:
                            barrier.setBarrierDirection(State.Direction.TOP);
                            continue;
                        case 3:
                            barrier.setBarrierDirection(State.Direction.LEFT);
                            continue;
                        case 4:
                            barrier.setBarrierDirection(State.Direction.RIGHT);
                            continue;
                        case 5:
                            if (!isRtl) {
                                barrier.setBarrierDirection(State.Direction.LEFT);
                                break;
                            } else {
                                barrier.setBarrierDirection(State.Direction.RIGHT);
                                continue;
                            }
                    }
                case true:
                    CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                    if (arrayOrNull != null) {
                        for (int i10 = 0; i10 < arrayOrNull.size(); i10++) {
                            barrier.add(state.constraints(arrayOrNull.get(i10).content()));
                        }
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void parseChain(int r6, androidx.constraintlayout.core.state.State r7, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r8, androidx.constraintlayout.core.parser.CLArray r9) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            r0 = 1
            if (r6 != 0) goto L8
            androidx.constraintlayout.core.state.helpers.HorizontalChainReference r6 = r7.horizontalChain()
            goto Lc
        L8:
            androidx.constraintlayout.core.state.helpers.VerticalChainReference r6 = r7.verticalChain()
        Lc:
            androidx.constraintlayout.core.parser.CLElement r1 = r9.get(r0)
            boolean r2 = r1 instanceof androidx.constraintlayout.core.parser.CLArray
            if (r2 == 0) goto Lae
            androidx.constraintlayout.core.parser.CLArray r1 = (androidx.constraintlayout.core.parser.CLArray) r1
            int r2 = r1.size()
            if (r2 >= r0) goto L1e
            goto Lae
        L1e:
            r2 = 0
            r3 = r2
        L20:
            int r4 = r1.size()
            if (r3 >= r4) goto L33
            java.lang.String r4 = r1.getString(r3)
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            r6.add(r4)
            int r3 = r3 + r0
            goto L20
        L33:
            int r1 = r9.size()
            r3 = 2
            if (r1 <= r3) goto Lae
            androidx.constraintlayout.core.parser.CLElement r9 = r9.get(r3)
            boolean r1 = r9 instanceof androidx.constraintlayout.core.parser.CLObject
            if (r1 != 0) goto L43
            return
        L43:
            androidx.constraintlayout.core.parser.CLObject r9 = (androidx.constraintlayout.core.parser.CLObject) r9
            java.util.ArrayList r1 = r9.names()
            java.util.Iterator r1 = r1.iterator()
        L4d:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lae
            java.lang.Object r3 = r1.next()
            java.lang.String r3 = (java.lang.String) r3
            r3.hashCode()
            java.lang.String r4 = "style"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L68
            parseConstraint(r7, r8, r9, r6, r3)
            goto L4d
        L68:
            androidx.constraintlayout.core.parser.CLElement r3 = r9.get(r3)
            boolean r4 = r3 instanceof androidx.constraintlayout.core.parser.CLArray
            if (r4 == 0) goto L85
            r4 = r3
            androidx.constraintlayout.core.parser.CLArray r4 = (androidx.constraintlayout.core.parser.CLArray) r4
            int r5 = r4.size()
            if (r5 <= r0) goto L85
            java.lang.String r3 = r4.getString(r2)
            float r4 = r4.getFloat(r0)
            r6.bias(r4)
            goto L89
        L85:
            java.lang.String r3 = r3.content()
        L89:
            r3.hashCode()
            java.lang.String r4 = "packed"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto La8
            java.lang.String r4 = "spread_inside"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto La2
            androidx.constraintlayout.core.state.State$Chain r3 = androidx.constraintlayout.core.state.State.Chain.SPREAD
            r6.style(r3)
            goto L4d
        La2:
            androidx.constraintlayout.core.state.State$Chain r3 = androidx.constraintlayout.core.state.State.Chain.SPREAD_INSIDE
            r6.style(r3)
            goto L4d
        La8:
            androidx.constraintlayout.core.state.State$Chain r3 = androidx.constraintlayout.core.state.State.Chain.PACKED
            r6.style(r3)
            goto L4d
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseChain(int, androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLArray):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseChainType(java.lang.String r21, androidx.constraintlayout.core.state.State r22, java.lang.String r23, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r24, androidx.constraintlayout.core.parser.CLObject r25) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseChainType(java.lang.String, androidx.constraintlayout.core.state.State, java.lang.String, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseColorString(String str) {
        if (str.startsWith("#")) {
            String substring = str.substring(1);
            if (substring.length() == 6) {
                substring = "FF" + substring;
            }
            return Long.parseLong(substring, 16);
        }
        return -1L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void parseConstraint(androidx.constraintlayout.core.state.State r20, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r21, androidx.constraintlayout.core.parser.CLObject r22, androidx.constraintlayout.core.state.ConstraintReference r23, java.lang.String r24) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseConstraint(androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject, androidx.constraintlayout.core.state.ConstraintReference, java.lang.String):void");
    }

    static void parseConstraintSets(CoreMotionScene coreMotionScene, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLObject object = cLObject.getObject(next);
            String stringOrNull = object.getStringOrNull("Extends");
            if (stringOrNull != null && !stringOrNull.isEmpty()) {
                String constraintSet = coreMotionScene.getConstraintSet(stringOrNull);
                if (constraintSet != null) {
                    CLObject parse = CLParser.parse(constraintSet);
                    ArrayList<String> names2 = object.names();
                    if (names2 != null) {
                        Iterator<String> it2 = names2.iterator();
                        while (it2.hasNext()) {
                            String next2 = it2.next();
                            CLElement cLElement = object.get(next2);
                            if (cLElement instanceof CLObject) {
                                override(parse, next2, (CLObject) cLElement);
                            }
                        }
                        coreMotionScene.setConstraintSetContent(next, parse.toJSON());
                    }
                }
            } else {
                coreMotionScene.setConstraintSetContent(next, object.toJSON());
            }
        }
    }

    static void parseCustomProperties(CLObject cLObject, ConstraintReference constraintReference, String str) throws CLParsingException {
        ArrayList<String> names;
        CLObject objectOrNull = cLObject.getObjectOrNull(str);
        if (objectOrNull == null || (names = objectOrNull.names()) == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = objectOrNull.get(next);
            if (cLElement instanceof CLNumber) {
                constraintReference.addCustomFloat(next, cLElement.getFloat());
            } else if (cLElement instanceof CLString) {
                long parseColorString = parseColorString(cLElement.content());
                if (parseColorString != -1) {
                    constraintReference.addCustomColor(next, (int) parseColorString);
                }
            }
        }
    }

    public static void parseDesignElementsJSON(String str, ArrayList<DesignElement> arrayList) throws CLParsingException {
        CLObject parse = CLParser.parse(str);
        ArrayList<String> names = parse.names();
        if (names != null && names.size() > 0) {
            String str2 = names.get(0);
            CLElement cLElement = parse.get(str2);
            str2.hashCode();
            if (!str2.equals("Design") || !(cLElement instanceof CLObject)) {
                return;
            }
            CLObject cLObject = (CLObject) cLElement;
            ArrayList<String> names2 = cLObject.names();
            for (int i10 = 0; i10 < names2.size(); i10++) {
                String str3 = names2.get(i10);
                CLObject cLObject2 = (CLObject) cLObject.get(str3);
                System.out.printf("element found " + str3 + "", new Object[0]);
                String stringOrNull = cLObject2.getStringOrNull("type");
                if (stringOrNull != null) {
                    HashMap hashMap = new HashMap();
                    int size = cLObject2.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        CLKey cLKey = (CLKey) cLObject2.get(i10);
                        String content = cLKey.content();
                        String content2 = cLKey.getValue().content();
                        if (content2 != null) {
                            hashMap.put(content, content2);
                        }
                    }
                    arrayList.add(new DesignElement(str2, stringOrNull, hashMap));
                }
            }
        }
    }

    static Dimension parseDimension(CLObject cLObject, String str, State state, CorePixelDp corePixelDp) throws CLParsingException {
        CLElement cLElement = cLObject.get(str);
        Dimension createFixed = Dimension.createFixed(0);
        if (cLElement instanceof CLString) {
            return parseDimensionMode(cLElement.content());
        }
        if (cLElement instanceof CLNumber) {
            return Dimension.createFixed(state.convertDimension(Float.valueOf(corePixelDp.toPixels(cLObject.getFloat(str)))));
        }
        if (cLElement instanceof CLObject) {
            CLObject cLObject2 = (CLObject) cLElement;
            String stringOrNull = cLObject2.getStringOrNull(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            if (stringOrNull != null) {
                createFixed = parseDimensionMode(stringOrNull);
            }
            CLElement orNull = cLObject2.getOrNull("min");
            if (orNull != null) {
                if (orNull instanceof CLNumber) {
                    createFixed.min(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull).getFloat()))));
                } else if (orNull instanceof CLString) {
                    createFixed.min(Dimension.WRAP_DIMENSION);
                }
            }
            CLElement orNull2 = cLObject2.getOrNull(AppLovinMediationProvider.MAX);
            if (orNull2 != null) {
                if (orNull2 instanceof CLNumber) {
                    createFixed.max(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull2).getFloat()))));
                    return createFixed;
                } else if (orNull2 instanceof CLString) {
                    createFixed.max(Dimension.WRAP_DIMENSION);
                    return createFixed;
                } else {
                    return createFixed;
                }
            }
            return createFixed;
        }
        return createFixed;
    }

    static Dimension parseDimensionMode(String str) {
        Dimension createFixed = Dimension.createFixed(0);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1460244870:
                if (str.equals("preferWrap")) {
                    c10 = 0;
                    break;
                }
                break;
            case -995424086:
                if (str.equals("parent")) {
                    c10 = 1;
                    break;
                }
                break;
            case -895684237:
                if (str.equals("spread")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3657802:
                if (str.equals("wrap")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Dimension.createSuggested(Dimension.WRAP_DIMENSION);
            case 1:
                return Dimension.createParent();
            case 2:
                return Dimension.createSuggested(Dimension.SPREAD_DIMENSION);
            case 3:
                return Dimension.createWrap();
            default:
                if (str.endsWith("%")) {
                    return Dimension.createPercent(0, Float.parseFloat(str.substring(0, str.indexOf(37))) / 100.0f).suggested(0);
                }
                if (str.contains(":")) {
                    return Dimension.createRatio(str).suggested(Dimension.SPREAD_DIMENSION);
                }
                return createFixed;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0240 A[Catch: NumberFormatException -> 0x044e, TryCatch #1 {NumberFormatException -> 0x044e, blocks: (B:108:0x0231, B:110:0x0240, B:111:0x0247, B:113:0x024f, B:174:0x03a9, B:176:0x03b8, B:177:0x03bf, B:179:0x03c7), top: B:211:0x0231 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x024f A[Catch: NumberFormatException -> 0x044e, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x044e, blocks: (B:108:0x0231, B:110:0x0240, B:111:0x0247, B:113:0x024f, B:174:0x03a9, B:176:0x03b8, B:177:0x03bf, B:179:0x03c7), top: B:211:0x0231 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03b8 A[Catch: NumberFormatException -> 0x044e, TryCatch #1 {NumberFormatException -> 0x044e, blocks: (B:108:0x0231, B:110:0x0240, B:111:0x0247, B:113:0x024f, B:174:0x03a9, B:176:0x03b8, B:177:0x03bf, B:179:0x03c7), top: B:211:0x0231 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03c7 A[Catch: NumberFormatException -> 0x044e, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x044e, blocks: (B:108:0x0231, B:110:0x0240, B:111:0x0247, B:113:0x024f, B:174:0x03a9, B:176:0x03b8, B:177:0x03bf, B:179:0x03c7), top: B:211:0x0231 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x044e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x044e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x044e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x044e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseFlowType(java.lang.String r17, androidx.constraintlayout.core.state.State r18, java.lang.String r19, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r20, androidx.constraintlayout.core.parser.CLObject r21) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 1214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseFlowType(java.lang.String, androidx.constraintlayout.core.state.State, java.lang.String, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject):void");
    }

    static void parseGenerate(State state, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            ArrayList<String> list = layoutVariables.getList(next);
            if (list != null && (cLElement instanceof CLObject)) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    parseWidget(state, layoutVariables, it2.next(), (CLObject) cLElement);
                }
            }
        }
    }

    private static void parseGridType(String str, State state, String str2, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        float f10;
        float f11;
        float f12;
        float f13;
        int i10;
        CLElement cLElement;
        GridReference grid = state.getGrid(str2, str);
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.hashCode();
            char c10 = 65535;
            switch (next.hashCode()) {
                case -1439500848:
                    if (next.equals(AdUnitActivity.EXTRA_ORIENTATION)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -806339567:
                    if (next.equals("padding")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -567445985:
                    if (next.equals("contains")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3169614:
                    if (next.equals("hGap")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3506649:
                    if (next.equals("rows")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3586688:
                    if (next.equals("vGap")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 97513095:
                    if (next.equals("flags")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 109497044:
                    if (next.equals("skips")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 109638249:
                    if (next.equals("spans")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 144441793:
                    if (next.equals("rowWeights")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 949721053:
                    if (next.equals("columns")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 2033353925:
                    if (next.equals("columnWeights")) {
                        c10 = 11;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    grid.setOrientation(cLObject.get(next).getInt());
                    break;
                case 1:
                    CLElement cLElement2 = cLObject.get(next);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement2;
                        if (cLArray.size() > 1) {
                            f10 = cLArray.getInt(0);
                            f13 = cLArray.getInt(1);
                            if (cLArray.size() > 2) {
                                f12 = cLArray.getInt(2);
                                try {
                                    f11 = ((CLArray) cLElement2).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f11 = 0.0f;
                                }
                            } else {
                                f12 = f10;
                                f11 = f13;
                            }
                            grid.setPaddingStart(Math.round(toPix(state, f10)));
                            grid.setPaddingTop(Math.round(toPix(state, f13)));
                            grid.setPaddingEnd(Math.round(toPix(state, f12)));
                            grid.setPaddingBottom(Math.round(toPix(state, f11)));
                            break;
                        }
                    }
                    f10 = cLElement2.getInt();
                    f11 = f10;
                    f12 = f11;
                    f13 = f12;
                    grid.setPaddingStart(Math.round(toPix(state, f10)));
                    grid.setPaddingTop(Math.round(toPix(state, f13)));
                    grid.setPaddingEnd(Math.round(toPix(state, f12)));
                    grid.setPaddingBottom(Math.round(toPix(state, f11)));
                case 2:
                    CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                    if (arrayOrNull != null) {
                        for (int i11 = 0; i11 < arrayOrNull.size(); i11++) {
                            grid.add(state.constraints(arrayOrNull.get(i11).content()));
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    grid.setHorizontalGaps(toPix(state, cLObject.get(next).getFloat()));
                    break;
                case 4:
                    int i12 = cLObject.get(next).getInt();
                    if (i12 > 0) {
                        grid.setRowsSet(i12);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    grid.setVerticalGaps(toPix(state, cLObject.get(next).getFloat()));
                    break;
                case 6:
                    String str3 = "";
                    try {
                        cLElement = cLObject.get(next);
                    } catch (Exception e10) {
                        System.err.println("Error parsing grid flags " + e10);
                    }
                    if (cLElement instanceof CLNumber) {
                        i10 = cLElement.getInt();
                        if (str3 == null && !str3.isEmpty()) {
                            grid.setFlags(str3);
                            break;
                        } else {
                            grid.setFlags(i10);
                            break;
                        }
                    } else {
                        str3 = cLElement.content();
                        i10 = 0;
                        if (str3 == null) {
                        }
                        grid.setFlags(i10);
                    }
                case 7:
                    String content = cLObject.get(next).content();
                    if (content != null && content.contains(":")) {
                        grid.setSkips(content);
                        break;
                    }
                    break;
                case '\b':
                    String content2 = cLObject.get(next).content();
                    if (content2 != null && content2.contains(":")) {
                        grid.setSpans(content2);
                        break;
                    }
                    break;
                case '\t':
                    String content3 = cLObject.get(next).content();
                    if (content3 != null && content3.contains(",")) {
                        grid.setRowWeights(content3);
                        break;
                    }
                    break;
                case '\n':
                    int i13 = cLObject.get(next).getInt();
                    if (i13 > 0) {
                        grid.setColumnsSet(i13);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    String content4 = cLObject.get(next).content();
                    if (content4 != null && content4.contains(",")) {
                        grid.setColumnWeights(content4);
                        break;
                    }
                    break;
                default:
                    applyAttribute(state, layoutVariables, state.constraints(str2), cLObject, next);
                    break;
            }
        }
    }

    static void parseGuideline(int i10, State state, CLArray cLArray) throws CLParsingException {
        CLObject cLObject;
        String stringOrNull;
        CLElement cLElement = cLArray.get(1);
        if (!(cLElement instanceof CLObject) || (stringOrNull = (cLObject = (CLObject) cLElement).getStringOrNull("id")) == null) {
            return;
        }
        parseGuidelineParams(i10, state, stringOrNull, cLObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static void parseGuidelineParams(int i10, State state, String str, CLObject cLObject) throws CLParsingException {
        boolean z10;
        String next;
        char c10;
        char c11;
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        ConstraintReference constraints = state.constraints(str);
        if (i10 == 0) {
            state.horizontalGuideline(str);
        } else {
            state.verticalGuideline(str);
        }
        if (state.isRtl() && i10 != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        GuidelineReference guidelineReference = (GuidelineReference) constraints.getFacade();
        Iterator<String> it = names.iterator();
        float f10 = 0.0f;
        boolean z11 = false;
        while (true) {
            boolean z12 = true;
            while (it.hasNext()) {
                next = it.next();
                next.hashCode();
                switch (next.hashCode()) {
                    case -678927291:
                        if (next.equals("percent")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 100571:
                        if (next.equals("end")) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3317767:
                        if (next.equals(TtmlNode.LEFT)) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 108511772:
                        if (next.equals(TtmlNode.RIGHT)) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 109757538:
                        if (next.equals("start")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                switch (c10) {
                    case 0:
                        CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                        if (arrayOrNull == null) {
                            f10 = cLObject.getFloat(next);
                        } else {
                            if (arrayOrNull.size() > 1) {
                                String string = arrayOrNull.getString(0);
                                float f11 = arrayOrNull.getFloat(1);
                                string.hashCode();
                                switch (string.hashCode()) {
                                    case 100571:
                                        if (string.equals("end")) {
                                            c11 = 0;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case 3317767:
                                        if (string.equals(TtmlNode.LEFT)) {
                                            c11 = 1;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case 108511772:
                                        if (string.equals(TtmlNode.RIGHT)) {
                                            c11 = 2;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case 109757538:
                                        if (string.equals("start")) {
                                            c11 = 3;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    default:
                                        c11 = 65535;
                                        break;
                                }
                                switch (c11) {
                                    case 0:
                                        z12 = !z10;
                                        f10 = f11;
                                        break;
                                    case 1:
                                        f10 = f11;
                                        break;
                                    case 2:
                                        f10 = f11;
                                        z12 = false;
                                        break;
                                    case 3:
                                        f10 = f11;
                                        z11 = true;
                                        z12 = z10;
                                    default:
                                        f10 = f11;
                                        break;
                                }
                            }
                            z11 = true;
                        }
                        z11 = true;
                        z12 = true;
                    case 1:
                        z12 = !z10;
                        f10 = toPix(state, cLObject.getFloat(next));
                    case 3:
                        f10 = toPix(state, cLObject.getFloat(next));
                        z12 = false;
                    case 4:
                        f10 = toPix(state, cLObject.getFloat(next));
                        z12 = z10;
                }
            }
            if (z11) {
                if (z12) {
                    guidelineReference.percent(f10);
                    return;
                } else {
                    guidelineReference.percent(1.0f - f10);
                    return;
                }
            } else if (z12) {
                guidelineReference.start(Float.valueOf(f10));
                return;
            } else {
                guidelineReference.end(Float.valueOf(f10));
                return;
            }
            f10 = toPix(state, cLObject.getFloat(next));
        }
    }

    static void parseHeader(CoreMotionScene coreMotionScene, CLObject cLObject) {
        String stringOrNull = cLObject.getStringOrNull("export");
        if (stringOrNull != null) {
            coreMotionScene.setDebugName(stringOrNull);
        }
    }

    static void parseHelpers(State state, LayoutVariables layoutVariables, CLArray cLArray) throws CLParsingException {
        for (int i10 = 0; i10 < cLArray.size(); i10++) {
            CLElement cLElement = cLArray.get(i10);
            if (cLElement instanceof CLArray) {
                CLArray cLArray2 = (CLArray) cLElement;
                if (cLArray2.size() > 1) {
                    String string = cLArray2.getString(0);
                    string.hashCode();
                    char c10 = 65535;
                    switch (string.hashCode()) {
                        case -1785507558:
                            if (string.equals("vGuideline")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1252464839:
                            if (string.equals("hChain")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -851656725:
                            if (string.equals("vChain")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 965681512:
                            if (string.equals("hGuideline")) {
                                c10 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            parseGuideline(1, state, cLArray2);
                            continue;
                        case 1:
                            parseChain(0, state, layoutVariables, cLArray2);
                            continue;
                        case 2:
                            parseChain(1, state, layoutVariables, cLArray2);
                            continue;
                        case 3:
                            parseGuideline(0, state, cLArray2);
                            continue;
                    }
                }
            }
        }
    }

    public static void parseJSON(String str, Transition transition, int i10) {
        CLObject objectOrNull;
        try {
            CLObject parse = CLParser.parse(str);
            ArrayList<String> names = parse.names();
            if (names == null) {
                return;
            }
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                String next = it.next();
                CLElement cLElement = parse.get(next);
                if ((cLElement instanceof CLObject) && (objectOrNull = ((CLObject) cLElement).getObjectOrNull("custom")) != null) {
                    Iterator<String> it2 = objectOrNull.names().iterator();
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        CLElement cLElement2 = objectOrNull.get(next2);
                        if (cLElement2 instanceof CLNumber) {
                            transition.addCustomFloat(i10, next, next2, cLElement2.getFloat());
                        } else if (cLElement2 instanceof CLString) {
                            long parseColorString = parseColorString(cLElement2.content());
                            if (parseColorString != -1) {
                                transition.addCustomColor(i10, next, next2, (int) parseColorString);
                            }
                        }
                    }
                }
            }
        } catch (CLParsingException e10) {
            PrintStream printStream = System.err;
            printStream.println("Error parsing JSON " + e10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void parseMotionProperties(CLElement cLElement, ConstraintReference constraintReference) throws CLParsingException {
        char c10;
        if (!(cLElement instanceof CLObject)) {
            return;
        }
        CLObject cLObject = (CLObject) cLElement;
        TypedBundle typedBundle = new TypedBundle();
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.hashCode();
            switch (next.hashCode()) {
                case -1897525331:
                    if (next.equals("stagger")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1310311125:
                    if (next.equals("easing")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1285003983:
                    if (next.equals("quantize")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -791482387:
                    if (next.equals("pathArc")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -236944793:
                    if (next.equals("relativeTo")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    typedBundle.add(600, cLObject.getFloat(next));
                    break;
                case 1:
                    typedBundle.add(603, cLObject.getString(next));
                    break;
                case 2:
                    CLElement cLElement2 = cLObject.get(next);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement2;
                        int size = cLArray.size();
                        if (size <= 0) {
                            break;
                        } else {
                            typedBundle.add(610, cLArray.getInt(0));
                            if (size <= 1) {
                                break;
                            } else {
                                typedBundle.add(611, cLArray.getString(1));
                                if (size <= 2) {
                                    break;
                                } else {
                                    typedBundle.add(602, cLArray.getFloat(2));
                                    break;
                                }
                            }
                        }
                    } else {
                        typedBundle.add(610, cLObject.getInt(next));
                        break;
                    }
                case 3:
                    String string = cLObject.getString(next);
                    int indexOf = indexOf(string, DevicePublicKeyStringDef.NONE, "startVertical", "startHorizontal", "flip", "below", "above");
                    if (indexOf == -1) {
                        System.err.println(cLObject.getLine() + " pathArc = '" + string + "'");
                        break;
                    } else {
                        typedBundle.add(607, indexOf);
                        break;
                    }
                case 4:
                    typedBundle.add(605, cLObject.getString(next));
                    break;
            }
        }
        constraintReference.mMotionProperties = typedBundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x006b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x005e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseMotionSceneJSON(androidx.constraintlayout.core.state.CoreMotionScene r7, java.lang.String r8) {
        /*
            androidx.constraintlayout.core.parser.CLObject r8 = androidx.constraintlayout.core.parser.CLParser.parse(r8)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            java.util.ArrayList r0 = r8.names()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r0 != 0) goto Lb
            return
        Lb:
            java.util.Iterator r0 = r0.iterator()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
        Lf:
            boolean r1 = r0.hasNext()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r1 == 0) goto L85
            java.lang.Object r1 = r0.next()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            java.lang.String r1 = (java.lang.String) r1     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            androidx.constraintlayout.core.parser.CLElement r2 = r8.get(r1)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            boolean r3 = r2 instanceof androidx.constraintlayout.core.parser.CLObject     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r3 == 0) goto Lf
            androidx.constraintlayout.core.parser.CLObject r2 = (androidx.constraintlayout.core.parser.CLObject) r2     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            int r3 = r1.hashCode()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            r4 = -2137403731(0xffffffff8099cead, float:-1.4124972E-38)
            r5 = 2
            r6 = 1
            if (r3 == r4) goto L51
            r4 = -241441378(0xfffffffff19be59e, float:-1.5439285E30)
            if (r3 == r4) goto L47
            r4 = 1101852654(0x41acefee, float:21.617153)
            if (r3 == r4) goto L3b
            goto L5b
        L3b:
            java.lang.String r3 = "ConstraintSets"
            boolean r1 = r1.equals(r3)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r1 == 0) goto L5b
            r1 = 0
            goto L5c
        L45:
            r7 = move-exception
            goto L6f
        L47:
            java.lang.String r3 = "Transitions"
            boolean r1 = r1.equals(r3)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r1 == 0) goto L5b
            r1 = r6
            goto L5c
        L51:
            java.lang.String r3 = "Header"
            boolean r1 = r1.equals(r3)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            if (r1 == 0) goto L5b
            r1 = r5
            goto L5c
        L5b:
            r1 = -1
        L5c:
            if (r1 == 0) goto L6b
            if (r1 == r6) goto L67
            if (r1 == r5) goto L63
            goto Lf
        L63:
            parseHeader(r7, r2)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            goto Lf
        L67:
            parseTransitions(r7, r2)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            goto Lf
        L6b:
            parseConstraintSets(r7, r2)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L45
            goto Lf
        L6f:
            java.io.PrintStream r8 = java.lang.System.err
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Error parsing JSON "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r8.println(r7)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseMotionSceneJSON(androidx.constraintlayout.core.state.CoreMotionScene, java.lang.String):void");
    }

    static void parseTransitions(CoreMotionScene coreMotionScene, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            coreMotionScene.setTransitionContent(next, cLObject.getObject(next).toJSON());
        }
    }

    private static void parseVariables(State state, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            if (cLElement instanceof CLNumber) {
                layoutVariables.put(next, cLElement.getInt());
            } else if (cLElement instanceof CLObject) {
                CLObject cLObject2 = (CLObject) cLElement;
                if (cLObject2.has("from") && cLObject2.has(TypedValues.TransitionType.S_TO)) {
                    layoutVariables.put(next, layoutVariables.get(cLObject2.get("from")), layoutVariables.get(cLObject2.get(TypedValues.TransitionType.S_TO)), 1.0f, cLObject2.getStringOrNull("prefix"), cLObject2.getStringOrNull("postfix"));
                } else if (cLObject2.has("from") && cLObject2.has("step")) {
                    layoutVariables.put(next, layoutVariables.get(cLObject2.get("from")), layoutVariables.get(cLObject2.get("step")));
                } else if (cLObject2.has("ids")) {
                    CLArray array = cLObject2.getArray("ids");
                    ArrayList<String> arrayList = new ArrayList<>();
                    for (int i10 = 0; i10 < array.size(); i10++) {
                        arrayList.add(array.getString(i10));
                    }
                    layoutVariables.put(next, arrayList);
                } else if (cLObject2.has(ITTVideoEngineEventSource.KEY_TAG)) {
                    layoutVariables.put(next, state.getIdsForTag(cLObject2.getString(ITTVideoEngineEventSource.KEY_TAG)));
                }
            }
        }
    }

    static void parseWidget(State state, LayoutVariables layoutVariables, String str, CLObject cLObject) throws CLParsingException {
        parseWidget(state, layoutVariables, state.constraints(str), cLObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void populateState(@NonNull CLObject cLObject, @NonNull State state, @NonNull LayoutVariables layoutVariables) throws CLParsingException {
        boolean z10;
        char c10;
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            next.hashCode();
            switch (next.hashCode()) {
                case -1824489883:
                    if (next.equals("Helpers")) {
                        z10 = false;
                        break;
                    }
                    z10 = true;
                    break;
                case 1875016085:
                    if (next.equals("Generate")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 1921490263:
                    if (next.equals("Variables")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                default:
                    z10 = true;
                    break;
            }
            switch (z10) {
                case false:
                    if (!(cLElement instanceof CLArray)) {
                        break;
                    } else {
                        parseHelpers(state, layoutVariables, (CLArray) cLElement);
                        break;
                    }
                case true:
                    if (!(cLElement instanceof CLObject)) {
                        break;
                    } else {
                        parseGenerate(state, layoutVariables, (CLObject) cLElement);
                        break;
                    }
                case true:
                    if (!(cLElement instanceof CLObject)) {
                        break;
                    } else {
                        parseVariables(state, layoutVariables, (CLObject) cLElement);
                        break;
                    }
                default:
                    if (cLElement instanceof CLObject) {
                        CLObject cLObject2 = (CLObject) cLElement;
                        String lookForType = lookForType(cLObject2);
                        if (lookForType != null) {
                            switch (lookForType.hashCode()) {
                                case -1785507558:
                                    if (lookForType.equals("vGuideline")) {
                                        c10 = 0;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case -1354837162:
                                    if (lookForType.equals("column")) {
                                        c10 = 1;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case -1252464839:
                                    if (lookForType.equals("hChain")) {
                                        c10 = 2;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case -851656725:
                                    if (lookForType.equals("vChain")) {
                                        c10 = 3;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case -333143113:
                                    if (lookForType.equals("barrier")) {
                                        c10 = 4;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 113114:
                                    if (lookForType.equals("row")) {
                                        c10 = 5;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 3181382:
                                    if (lookForType.equals("grid")) {
                                        c10 = 6;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 98238902:
                                    if (lookForType.equals("hFlow")) {
                                        c10 = 7;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 111168196:
                                    if (lookForType.equals("vFlow")) {
                                        c10 = '\b';
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 965681512:
                                    if (lookForType.equals("hGuideline")) {
                                        c10 = '\t';
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                default:
                                    c10 = 65535;
                                    break;
                            }
                            switch (c10) {
                                case 0:
                                    parseGuidelineParams(1, state, next, cLObject2);
                                    continue;
                                case 1:
                                case 5:
                                case 6:
                                    parseGridType(lookForType, state, next, layoutVariables, cLObject2);
                                    continue;
                                case 2:
                                case 3:
                                    parseChainType(lookForType, state, next, layoutVariables, cLObject2);
                                    continue;
                                case 4:
                                    parseBarrier(state, next, cLObject2);
                                    continue;
                                case 7:
                                case '\b':
                                    parseFlowType(lookForType, state, next, layoutVariables, cLObject2);
                                    continue;
                                case '\t':
                                    parseGuidelineParams(0, state, next, cLObject2);
                                    continue;
                            }
                        } else {
                            parseWidget(state, layoutVariables, next, cLObject2);
                            break;
                        }
                    } else if (!(cLElement instanceof CLNumber)) {
                        break;
                    } else {
                        layoutVariables.put(next, cLElement.getInt());
                        break;
                    }
            }
        }
    }

    private static float toPix(State state, float f10) {
        return state.getDpToPixel().toPixels(f10);
    }

    static void parseWidget(State state, LayoutVariables layoutVariables, ConstraintReference constraintReference, CLObject cLObject) throws CLParsingException {
        if (constraintReference.getWidth() == null) {
            constraintReference.setWidth(Dimension.createWrap());
        }
        if (constraintReference.getHeight() == null) {
            constraintReference.setHeight(Dimension.createWrap());
        }
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            applyAttribute(state, layoutVariables, constraintReference, cLObject, it.next());
        }
    }

    public static void parseJSON(String str, State state, LayoutVariables layoutVariables) throws CLParsingException {
        try {
            populateState(CLParser.parse(str), state, layoutVariables);
        } catch (CLParsingException e10) {
            PrintStream printStream = System.err;
            printStream.println("Error parsing JSON " + e10);
        }
    }
}
