package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLParser {
    static boolean sDebug = false;
    private String mContent;
    private boolean mHasComment = false;
    private int mLineNumber;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i10, TYPE type, boolean z10, char[] cArr) {
        CLElement allocate;
        if (sDebug) {
            System.out.println("CREATE " + type + " at " + cArr[i10]);
        }
        switch (type.ordinal()) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i10++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i10++;
                break;
            case 3:
                allocate = CLNumber.allocate(cArr);
                break;
            case 4:
                allocate = CLString.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.mLineNumber);
        if (z10) {
            allocate.setStart(i10);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }

    private CLElement getNextJsonElement(int i10, char c10, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c10 != '\t' && c10 != '\n' && c10 != '\r' && c10 != ' ') {
            if (c10 != '\"' && c10 != '\'') {
                if (c10 != '[') {
                    if (c10 != ']') {
                        if (c10 != '{') {
                            if (c10 != '}') {
                                switch (c10) {
                                    case '+':
                                    case '-':
                                    case '.':
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                        return createElement(cLElement, i10, TYPE.NUMBER, true, cArr);
                                    case ',':
                                    case ':':
                                        return cLElement;
                                    case '/':
                                        int i11 = i10 + 1;
                                        if (i11 < cArr.length && cArr[i11] == '/') {
                                            this.mHasComment = true;
                                            return cLElement;
                                        }
                                        return cLElement;
                                    default:
                                        if ((cLElement instanceof CLContainer) && !(cLElement instanceof CLObject)) {
                                            CLElement createElement = createElement(cLElement, i10, TYPE.TOKEN, true, cArr);
                                            CLToken cLToken = (CLToken) createElement;
                                            if (!cLToken.validate(c10, i10)) {
                                                throw new CLParsingException("incorrect token <" + c10 + "> at line " + this.mLineNumber, cLToken);
                                            }
                                            return createElement;
                                        }
                                        return createElement(cLElement, i10, TYPE.KEY, true, cArr);
                                }
                            }
                        } else {
                            return createElement(cLElement, i10, TYPE.OBJECT, true, cArr);
                        }
                    }
                    cLElement.setEnd(i10 - 1);
                    CLElement container = cLElement.getContainer();
                    container.setEnd(i10);
                    return container;
                }
                return createElement(cLElement, i10, TYPE.ARRAY, true, cArr);
            } else if (cLElement instanceof CLObject) {
                return createElement(cLElement, i10, TYPE.KEY, true, cArr);
            } else {
                return createElement(cLElement, i10, TYPE.STRING, true, cArr);
            }
        }
        return cLElement;
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLObject parse() throws CLParsingException {
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i10 = 1;
        this.mLineNumber = 1;
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                i11 = -1;
                break;
            }
            char c10 = charArray[i11];
            if (c10 == '{') {
                break;
            }
            if (c10 == '\n') {
                this.mLineNumber++;
            }
            i11++;
        }
        if (i11 != -1) {
            CLObject allocate = CLObject.allocate(charArray);
            allocate.setLine(this.mLineNumber);
            allocate.setStart(i11);
            int i12 = i11 + 1;
            CLObject cLObject = allocate;
            while (i12 < length) {
                char c11 = charArray[i12];
                if (c11 == '\n') {
                    this.mLineNumber += i10;
                }
                if (this.mHasComment) {
                    if (c11 == '\n') {
                        this.mHasComment = z10;
                    } else {
                        continue;
                        i12++;
                        i10 = 1;
                        z10 = false;
                    }
                }
                if (cLObject == null) {
                    break;
                }
                if (cLObject.isDone()) {
                    cLObject = getNextJsonElement(i12, c11, cLObject, charArray);
                } else if (cLObject instanceof CLObject) {
                    if (c11 == '}') {
                        cLObject.setEnd(i12 - 1);
                    } else {
                        cLObject = getNextJsonElement(i12, c11, cLObject, charArray);
                    }
                } else if (!(cLObject instanceof CLArray)) {
                    boolean z11 = cLObject instanceof CLString;
                    if (z11) {
                        long j10 = cLObject.mStart;
                        if (charArray[(int) j10] == c11) {
                            cLObject.setStart(j10 + 1);
                            cLObject.setEnd(i12 - 1);
                        }
                    } else {
                        if (cLObject instanceof CLToken) {
                            CLToken cLToken = (CLToken) cLObject;
                            if (!cLToken.validate(c11, i12)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                            }
                        }
                        if ((cLObject instanceof CLKey) || z11) {
                            long j11 = cLObject.mStart;
                            char c12 = charArray[(int) j11];
                            if ((c12 == '\'' || c12 == '\"') && c12 == c11) {
                                cLObject.setStart(j11 + 1);
                                cLObject.setEnd(i12 - 1);
                            }
                        }
                        if (!cLObject.isDone() && (c11 == '}' || c11 == ']' || c11 == ',' || c11 == ' ' || c11 == '\t' || c11 == '\r' || c11 == '\n' || c11 == ':')) {
                            long j12 = i12 - 1;
                            cLObject.setEnd(j12);
                            if (c11 == '}' || c11 == ']') {
                                cLObject = cLObject.getContainer();
                                cLObject.setEnd(j12);
                                if (cLObject instanceof CLKey) {
                                    cLObject = cLObject.getContainer();
                                    cLObject.setEnd(j12);
                                }
                            }
                        }
                    }
                } else if (c11 == ']') {
                    cLObject.setEnd(i12 - 1);
                } else {
                    cLObject = getNextJsonElement(i12, c11, cLObject, charArray);
                }
                if (cLObject.isDone() && (!(cLObject instanceof CLKey) || ((CLKey) cLObject).mElements.size() > 0)) {
                    cLObject = cLObject.getContainer();
                }
                i12++;
                i10 = 1;
                z10 = false;
            }
            while (cLObject != null && !cLObject.isDone()) {
                if (cLObject instanceof CLString) {
                    cLObject.setStart(((int) cLObject.mStart) + 1);
                }
                cLObject.setEnd(length - 1);
                cLObject = cLObject.getContainer();
            }
            if (sDebug) {
                System.out.println("Root: " + allocate.toJSON());
            }
            return allocate;
        }
        throw new CLParsingException("invalid json content", null);
    }
}
